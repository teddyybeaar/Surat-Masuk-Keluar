<?php
class Admin_model extends CI_Model{
 
  function admin(){
    $result = $this->db->get('admin');
    return $result;
  }
  function save($nama,$username,$password){
    $data = array(
      'nama' => $nama,
      'username' => $username,
      'password' => $password
    );
    $this->db->insert('admin',$data);
  }
  function delete($id_admin){
    $this->db->where('id_admin', $id_admin);
    $this->db->delete('admin');
}
function get_admin_id($id_admin){
  $query = $this->db->get_where('admin', array('id_admin' => $id_admin));
  return $query;
}
function update($id_admin,$nama,$username,$password){
  $data = array(
    'nama' => $nama,
    'username' => $username,
    'password' => $password
  );
  $this->db->where('id_admin', $id_admin);
  $this->db->update('admin', $data);
}
  
 


  
}
?>