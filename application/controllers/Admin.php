<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
    function __construct(){
        parent::__construct();
        $this->load->model('admin_model');
    }
    function index(){
        $admin=$this->admin_model->admin();
        $data = array ('title' => 'Admin',
                        'isi' => 'admin/admin/list',
                        'admin' => $admin);
                        $this->load->view('admin/layout/wrapper',$data,$admin);

    }
    function save(){
        $nama = $this->input->post('nama');
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $this->admin_model->save($nama,$username,$password);
        $this->session->set_flashdata('sukses','Admin berhasil ditambah');
        redirect('admin');
      }
      function delete(){
        $id_admin = $this->uri->segment(3);
        $this->admin_model->delete($id_admin);
        redirect('admin');
    }
    function get_edit(){
        $id_admin = $this->uri->segment(3);
    $result = $this->admin_model->get_admin_id($id_admin);
    if($result->num_rows() > 0){
        $i = $result->row_array();
        $data = array(
            'id_admin'    => $i['id_admin'],
            'nama'  => $i['nama'],
            'username'     => $i['username'],
            'password'     => $i['password'],
            'isi' => 'admin/admin/edit',
            'title' => 'edit',
            
        );
        $this->load->view('admin/layout/wrapper',$data);
    }else{
        echo "Data Was Not Found";
    }
      }
      function update(){
            $id_admin = $this->input->post('id_admin');
            $nama = $this->input->post('nama');
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $this->admin_model->update($id_admin,$nama,$username,$password);
            redirect('admin');
        }
}
?>