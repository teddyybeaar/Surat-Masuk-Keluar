<?php
class Login extends CI_Controller{
  function __construct(){
    parent::__construct();
    $this->load->model('login_model');
  }
  function index(){
    $this->load->view('admin/login_view');
  }
  function gas(){
    $username = $this->input->post('username');
    $password = $this->input->post('password');
    $where = array(
		'username' => $username,
		'password' => $password
		);
    $cek = $this->login_model->cek('admin',$where)->num_rows();
	if($cek > 0){
 
		$data_session = array(
			'username' => $username,
			'status' => "login"
			);
 
        $this->session->set_userdata($data_session);
        
            
		redirect(base_url("home"));
	}else{
        $this->session->set_flashdata('sukses','Username atau Password salah!');
        redirect(base_url("login"));
    }
    
}
function logout(){
	$this->session->sess_destroy();
	redirect(base_url('login'));
}
  }

?>