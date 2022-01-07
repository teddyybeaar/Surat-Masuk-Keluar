<?php
class Surat_model extends CI_Model{
 
  function surat(){
    $result = $this->db->get('surat_masuk');
    return $result;
  }
  function dis(){
    $result = $this->db->get('disposisi');
    return $result;
  }
  function sk(){
    $result = $this->db->get('surat_keluar');
    return $result;
  }
  function save($dari,$isi,$tgl_surat,$tgl_diterima,$no_surat){
    $data = array(
      'dari' => $dari,
      'isi_ringkas' => $isi,
      'tgl_surat' => $tgl_surat,
      'tgl_diterima' => $tgl_diterima,
      'no_surat' => $no_surat
    );
    $this->db->insert('surat_masuk',$data);
  }
  public function insert($tbl,$data)
    {   
        $this->db->insert($tbl,$data);
    }
    function deletesm($id_sm){
      $this->db->where('id_sm', $id_sm);
      $this->db->delete('surat_masuk');
  }
  function get_sm_id($id_sm){
    $query = $this->db->get_where('surat_masuk', array('id_sm' => $id_sm));
    return $query;
  }
  public function updatesm($tbl,$key,$args,$data)
    {   
        $this->db->where($key,$args);
        $this->db->update($tbl, $data);     
    }
    public function getData($tbl,$field,$key,$args)
    {   
        $this->db->select($field);
        $this->db->from($tbl);
        $this->db->where($key,$args);
        $query = $this->db->get();  

        if($query->num_rows()>0){
            return $query->row_array();
        }else{
            return 0;
        }
    }

    public function getDAll($tbl,$field,$order,$args)
    {   
        $this->db->order_by($order, $args);
        $this->db->select($field);
        $this->db->from($tbl);

        $query = $this->db->get();  
        if($query->num_rows()>0){
            return $query->result();
        }else{
            return 0;
        }
    }
    function deletesk($id_sk){
      $this->db->where('id_sk', $id_sk);
      $this->db->delete('surat_keluar');
  }
  function get_sk_id($id_sk){
    $query = $this->db->get_where('surat_keluar', array('id_sk' => $id_sk));
    return $query;
  }
  function laporan($key,$table,$args){
    $query = $this->db->get_where($table, array($key => $args));
    return $query;
  }
  function get_d_id($id){
    $query = $this->db->get_where('disposisi', array('id' => $id));
    return $query;
  }
  function filter($awal,$akhir){
  $this->db->select('*');
  $this->db->from('surat_keluar');
  if(isset($_GET['awal'])) {
    
    $this->db->where("('tgl_surat') between $awal and $akhir");    				
}
  }
}
?>