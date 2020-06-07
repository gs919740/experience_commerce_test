<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reimbursement_api extends CI_Controller {

	
	public function __construct()
	{	
	    parent::__construct();
	    $this->load->model('Api_model','am');
	}
	

	public function savereimburement_api()
	{

		$month  = $this->input->post("month");
		$type   = $this->input->post("type");
		$maxelement = count(max($_POST));
        $this->dataValidations($_POST , ['month','type']);
        $this->dataValidations($_POST , ['month','type'],'empty');
		$reimbursement_data['month'] = $month;
		$reimbursement_data['type'] = $type;
		if($type=='conveyance')
		{	
	        $this->dataValidations($_POST , ['date','from','to','purpose','mode','conv_amount']);
	        $this->dataValidations($_POST , ['date','from','to','purpose','mode','conv_amount'],'empty',$maxelement);
	        $this->dataValidations($_POST , ['purpose'],'empty',$maxelement);
	        $this->dataValidations($_POST,['date'],'date',$maxelement);
	        $this->dataValidations($_POST,['purpose'],'purpose',$maxelement);
	        $this->dataValidations($_POST,['mode'],'mode',$maxelement);
	        $uploadedfilename = $this->do_upload('conveyance_attachment',$maxelement);
	        $reimbursement_rel_data = $this->getdatafromform($_POST,['date','from','to','purpose','mode','distance','conv_invoiceno','conv_amount','pur_other_desc','mode_other_desc'],$maxelement,$uploadedfilename);
	        $this->am->savereimburement($reimbursement_data,$reimbursement_rel_data);
			$this->showResponse('success','Reimbursement details saved successfully');

		}elseif($type=='hotel'){
			
			$this->dataValidations($_POST , ['from_date','to_date','hotelname','invoiceno','amount']);
			$this->dataValidations($_POST , ['from_date','to_date','hotelname','invoiceno','amount'],'empty',$maxelement);
	        $this->dataValidations($_POST,['from_date','to_date'],'date',$maxelement);
	        $uploadedfilename = $this->do_upload('attachment',$maxelement,true);
	        $reimbursement_rel_data = $this->getdatafromform($_POST,['from_date','to_date','hotelname','invoiceno','amount'],$maxelement,$uploadedfilename);
			$this->am->savereimburement($reimbursement_data,$reimbursement_rel_data);
			$this->showResponse('success','Reimbursement details saved successfully');	        
		}elseif ($type=='food') {
			$this->dataValidations($_POST , ['date','food_invoiceno','food_amount']);
			$this->dataValidations($_POST , ['date','food_invoiceno','food_amount'],'empty',$maxelement);
	        $this->dataValidations($_POST,['date'],'date',$maxelement);
	        $uploadedfilename = $this->do_upload('food_attachment',$maxelement,true);
	        $reimbursement_rel_data = $this->getdatafromform($_POST,['date','food_invoiceno','food_amount'],$maxelement,$uploadedfilename);
			$this->am->savereimburement($reimbursement_data,$reimbursement_rel_data);
			$this->showResponse('success','Reimbursement details saved successfully');
		}elseif ($type=='mobile') {
			$this->dataValidations($_POST , ['mobile_invoiceno','mobile_amount']);
			$this->dataValidations($_POST , ['mobile_invoiceno','mobile_amount'],'empty',$maxelement);
	        $uploadedfilename = $this->do_upload('mobile_attachment',$maxelement,true);
	        $reimbursement_rel_data = $this->getdatafromform($_POST,['mobile_invoiceno','mobile_amount'],$maxelement,$uploadedfilename);
			$this->am->savereimburement($reimbursement_data,$reimbursement_rel_data);
			$this->showResponse('success','Reimbursement details saved successfully');
		}elseif ($type=='inertnet') {
			$this->dataValidations($_POST , ['internet_invoiceno','internet_amount']);
			$this->dataValidations($_POST , ['internet_invoiceno','internet_amount'],'empty',$maxelement);
	        $uploadedfilename = $this->do_upload('mobile_attachment',$maxelement,true);
	        $reimbursement_rel_data = $this->getdatafromform($_POST,['internet_invoiceno','internet_amount'],$maxelement,$uploadedfilename);
			$this->am->savereimburement($reimbursement_data,$reimbursement_rel_data);
			$this->showResponse('success','Reimbursement details saved successfully');
		}	
	}

	public function getdatewisereimbursement(){

		$data = $this->am->getdatewisereimbursement();
		if(!empty($data))
		{
			foreach ($data as $key => $value) {
				
				if($value['type']=='conveyance')
				{
					$remdata['date'] = $value['date']; 	
					$remdata['from'] = $value['from']; 	
					$remdata['to'] = $value['to']; 	
					$remdata['purpose'] = $value['purpose']; 	
					$remdata['distance'] = $value['distance']; 	
					$remdata['invoiceno'] = $value['invoiceno']; 	
					$remdata['amount'] = $value['amount'];
					if($value['purpose']== 'other')
					$remdata['purpose_description'] = $value['pur_other_desc'];
					if($value['mode']== 'other')
					$remdata['mode_description'] = $value['mode_other_desc']; 	
					$remdata['attachment'] = base_url().'/uploads/'.$value['attachment'];
					$montthwise_rem[$value['month']][$value['type']][]=$remdata; 	
				}elseif($value['type']=='hotel')
				{
					$remdata['fromdate'] = $value['from_date']; 	
					$remdata['todate'] = $value['to_date']; 	
					$remdata['hotelname'] = $value['hotelname']; 	
					$remdata['invoiceno'] = $value['invoiceno']; 	
					$remdata['amount'] = $value['amount']; 	
					$remdata['attachment'] = base_url().'/uploads/'.$value['attachment'];
					$montthwise_rem[$value['month']][$value['type']][]=$remdata; 	
				}
				elseif($value['type']=='food')
				{
					$remdata['date'] = $value['date']; 	
					$remdata['invoiceno'] = $value['invoiceno']; 	
					$remdata['amount'] = $value['amount']; 	
					$remdata['attachment'] = base_url().'/uploads/'.$value['attachment'];
					$montthwise_rem[$value['month']][$value['type']][]=$remdata; 	
				}
				elseif($value['type']=='mobile')
				{
					$remdata['invoiceno'] = $value['invoiceno']; 	
					$remdata['amount'] = $value['amount']; 	
					$remdata['attachment'] = base_url().'/uploads/'.$value['attachment'];
					$montthwise_rem[$value['month']][$value['type']][]=$remdata; 	
				}
				elseif($value['type']=='internet')
				{
					$remdata['invoiceno'] = $value['invoiceno']; 	
					$remdata['amount'] = $value['amount']; 	
					$remdata['attachment'] = base_url().'/uploads/'.$value['attachment'];
					$montthwise_rem[$value['month']][$value['type']][]=$remdata; 	
				}

			}
			$this->showResponse('success','date wise reimbursement details',$montthwise_rem);			

		}else{

			$this->showResponse('success','No data found');

		}	


	}

	public function getdatafromform($params,$columns,$maxelement,$imagedata)
	{
		$data = [];
		for ($i=0; $i < $maxelement ; $i++) { 
			foreach ($columns as $key => $value) {

				if(!isset($params[$value][$i]))
				$datavalue = '';
				else	
				$datavalue = $params[$value][$i];
				if(strrpos($value,'invoiceno'))
				$value = 'invoiceno';
				if(strrpos($value,'amount'))
				$value = 'amount';	
				$data[$i][$value] = $datavalue;
			}
			$data[$i]['attachment'] = $imagedata[$i];
		}
		return $data;

	}

	public function dataValidations($params , $requiredInputs,$checktype='isset',$maxelement=null){

        foreach ($requiredInputs as  $input) {
            if($checktype == 'isset'){
                if(!isset($params[$input])){
                    $this->showResponse("failed","$input Required.");
                }
            }
            elseif($checktype == 'date'){
                for ($i=0; $i < $maxelement; $i++) { 

            			if($this->validateDate($params[$input][$i]) === false){
                    		$this->showResponse("failed","$input is should date at $i row");
                		}  
                	}
            }
            elseif($checktype == 'purpose'){
            	$purposedata = $this->am->getdata('purpose');
            	$purposedata =array_column($purposedata, 'name');
                for ($i=0; $i < $maxelement; $i++) { 

        			if(!in_array($params[$input][$i], $purposedata)){
                		$this->showResponse("failed","$input Invalid data at $i row");
            		}else{
            			if($params[$input][$i]=='other')
            			{
            				if(empty($params['pur_other_desc'][$i]))
            				{
                				$this->showResponse("failed","pur_other_desc is should not be blank at $i row");

            				}	
            			}	
            		}  
            	}
            }
            elseif($checktype == 'mode'){
            	$modedata = $this->am->getdata('mode');
            	$modedata =array_column($modedata, 'name');
                for ($i=0; $i < $maxelement; $i++) { 

            			if(!in_array($params[$input][$i], $modedata)){
                    		$this->showResponse("failed","$input Invalid data at $i row");
                		}else{
                			if($params[$input][$i]=='other')
                			{
                				if(empty($params['mode_other_desc'][$i]))
                				{
                    				$this->showResponse("failed","mode_other_desc is should not be blank at $i row");

                				}	
                			}	
                		}  
                	}
            }
            elseif($checktype == 'empty'){
            	if($maxelement)
            	{	
            		for ($i=0; $i < $maxelement; $i++) { 

            			if(empty(trim($params[$input][$i])) || (!is_array($params[$input]))){
                    		$this->showResponse("failed","$input is blank at $i row");
                		}  
                	}
            	}else{
            		if(empty(trim($params[$input]))){
                    	$this->showResponse("failed","$input should not be blank.");
                	}	
            	}
            }
        }
    }

    function do_upload($input,$maxelement,$required=false){
        $config['upload_path'] = UPLOADPATH;
        $config['allowed_types'] = 'gif|jpg|png|pdf';
        $config['encrypt_name'] = TRUE;
        $this->load->library('upload',$config);
        for ($i=0; $i<$maxelement ; $i++) { 
        	if(!empty($_FILES[$input]['name'][$i])){
        		$_FILES['file']['name'] = $_FILES[$input]['name'][$i];
	        	$_FILES['file']['type'] = $_FILES[$input]['type'][$i];
	        	$_FILES['file']['tmp_name'] = $_FILES[$input]['tmp_name'][$i];
	        	$_FILES['file']['error'] = $_FILES[$input]['error'][$i];
	        	$_FILES['file']['size'] = $_FILES[$input]['size'][$i];
	        	if($this->upload->do_upload('file')){
		            $data = array('upload_data' => $this->upload->data());
			        $image[$i]= $data['upload_data']['file_name']; 
		        }
		        if(!empty($this->upload->display_errors()))
	            {
	            	$this->showResponse("failed","$input || ".$this->upload->display_errors());
	            }	
	        	 
	    	}else{
            	if($required)
            	{	
            		$this->showResponse("failed","$input file in required");
            	}
	    	}

        }

        return $image;
        
 
     }

    public function validateDate($date, $format = 'Y-m-d')
	{
    	$d = DateTime::createFromFormat($format, $date);
    	return $d && $d->format($format) == $date;
	}
	public function showResponse($status,$error,$output = null){
        ob_clean();
        header('Content-Type: application/json');
        $data = ['status' => $status, 'message' => $error,'output' => $output];
        echo json_encode($data);
        exit;
    }


}
