<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Employee_model extends CI_Model 
{


	public function __construct()
	{
	    parent::__construct();
		$this->load->database();
	}

	
	public function savetimesheet($data){

		$this->db->insert_batch('employee_timesheet', $data);
		return $this->db->affected_rows();

	}

}
