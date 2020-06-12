<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Api_model extends CI_Model 
{


	public function __construct()
	{
	    parent::__construct();
		$this->load->database();
	}

	
	public function getdata($tablename){

		return $this->db->get($tablename)->result_array();

	}

	public function savereimburement($reimbursement_data,$reimbursement_rel_data)
	{
		$this->db->insert('reimbursement',$reimbursement_data);	
		$reimbursementid = $this->db->insert_id();
		foreach ($reimbursement_rel_data as $key => $value) {
			$value['reimbursement_id'] = $reimbursementid;
			$reimbursement_rel_data[$key] = $value;
		}
		$this->db->insert_batch('reimbursement_rel',$reimbursement_rel_data);	

	}


	public function getreimbursement(){

		$this->db->join('reimbursement_rel rbl', 'rbl.reimbursement_id = rb.id');
		$data = $this->db->get('reimbursement rb')->result_array();	
		return $data;
		 
	}	


}
