<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;

class Employee extends CI_Controller {

	
	public function __construct()
	{	
	    parent::__construct();
		$this->load->model('Employee_model', 'em');

	}
	

	public function index()
	{
		$this->load->view('immport_employee');
	}
      	// use PhpOffice\PhpSpreadsheet\IOFactory;


	public function importdata(){
    	require_once DOCUMENT_ROOT . '/vendor/autoload.php';
    	$importfile = $_FILES['employeefile']['tmp_name'];
    	$mandatory_array=['date','employee id','working type','start','end','store id'] ;
    	$date_field = ['date'];
    	$field_columname=['date'=>'date','employee id'=>'employeeid','working type'=>'working_type','start'=>'start','end'=>'end','store id'=>'store_id','store name'=>'store_name','name'=>'name'];
    	$table_header="<table border=1 ><tr><th>msg</th><th>column</th><th>row no</th></tr>";
    	$table_footer = "</table>";
    	$table_body = '';
    	// $spreadsheet = IOFactory::load($importfile);
		// $sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
		// $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
		// $spreadsheet = $reader->load($inputFileName);

		// print_r($sheetData);
		// exit;
		$xlsx = new SimpleXLSX( $importfile );
		$fp = fopen( $importfile, 'w');
		$header_values =[];
		foreach($xlsx->rows() as $k => $fields ) {
			if ( $k === 0 ) {
				$header_values = $fields;
				continue;
		 	}
			$rows[] = array_combine( $header_values, $fields );	
		}
		$mandatorycolumn_missing = 0;
		$numberofinserteddata = 0;
		$header_mismatch =0;
		$header_mismatch_array =[];
		
		$mandatorycolumn_missing_array = [];
		$output = [];

		foreach ($field_columname as $header => $column) {
			if(!in_array($header,$header_values))
			{
				$header_mismatch = 1;
				$header_mismatch_array[] = $column;
			}
		}
		if($header_mismatch == 0)
		{	
			foreach ($mandatory_array as $key => $column) {
				if(!in_array($column,$header_values))
				{
					$mandatorycolumn_missing = 1;
					$mandatorycolumn_missing_array[] = $column;
				}

			}

			if($mandatorycolumn_missing==0)
			{	
				$count = 0;
				$mandatorycolumn_empty_array = [];
				$invalid_date_array = [];
				foreach ($rows as $header => $data) {
					$mandatorycolumn_empty = 0;
					$invalid_date = 0;

					$count ++;
					foreach ($date_field as $key => $column) {
						if (!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/",$data[$column])) {
						    $invalid_date_array[$column]=$count;
							$invalid_date =1;
						} 	
					}	

					foreach ($mandatory_array as $key => $column) {
						if(empty($data[$column]))
						{
							$mandatorycolumn_empty_array[$column][]=$count;

							$mandatorycolumn_empty = 1;
						}	
					}

					if($mandatorycolumn_empty == 0 &&  $invalid_date == 0)
					{
						foreach ($data as $header => $datavalue) {
							$newdata[$field_columname[$header]] = $datavalue;
						}
						$finaldata[]=	$newdata;

					}	

				}
				if(!empty($finaldata))
				{	
					$numberofinserteddata = $this->em->savetimesheet($finaldata);
					$output['result']='sucess';
					$output['msg']=$numberofinserteddata .' rows inserted' ;

				}
				if($mandatorycolumn_empty==1){
					foreach ($mandatorycolumn_empty_array as $column => $row) {
						$table_body.="<tr><td>blank value of mandotory column</td><td>$column</td><td>".implode(',',$row)."</td></tr>";
					}
				}
				if($invalid_date==1){
					foreach ($invalid_date_array as $column => $row) {
						$table_body.="<tr><td>Invalid Date </td><td>$column</td><td>".implode(',',$row)."</td></tr>";
					}
				}
			}else{
				$output['result']='failed';
				$table_body.="<tr><td>Missing column </td><td>".implode(',', $mandatorycolumn_missing_array)."</td><td></td></tr>";
			}
		}else{
			$output['result']='failed';
			$table_body.="<tr><td>header Mismatch </td><td>".implode(',', $header_mismatch_array)."</td><td></td></tr>";
		}

		if(!empty($table_body))
		{	
			$error= $table_header.$table_body.$table_footer;
			$output['error']=addslashes($error);

		}	
		fclose($fp);
		echo json_encode($output);
	}


}
