<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sk extends CI_Controller {
    function __construct(){
        parent::__construct();
        $this->load->model('surat_model');
    }
    function index(){
		$surat=$this->surat_model->sk();
        $data = array (	'surat' => $surat,
						'title' => 'Surat Keluar',
                        'isi' => 'admin/suratkeluar/list');
                        $this->load->view('admin/layout/wrapper',$data);

	}
	function create(){
        
		$v = $this->form_validation;
		$v->set_rules('tujuan','isi','required');
		
		if($v->run()) {
			if(!empty($_FILES['file']['name'])) 
			$config['upload_path'] 		= './assets/upload/image/suratkeluar/';
			$config['allowed_types'] 	= 'gif|jpg|png|pdf|jpeg';
			$config['max_size']			= '1000'; // KB			
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('file')) {
				
		$data = array(	'title'			=> 'Tambah Surat Masuk',
						'error'			=> $this->upload->display_errors(),
						'isi'			=> 'admin/suratkeluar/create');
		$this->load->view('admin/layout/wrapper',$data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				// Image Editor
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/suratkeluar/'.$upload_data['uploads']['file_name']; 
				$config['new_image'] 		= './assets/upload/image/thumbs/';
				$config['create_thumb'] 	= TRUE;
				$config['maintain_ratio'] 	= TRUE;
				$config['width'] 			= 150; // Pixel
				$config['height'] 			= 150; // Pixel
				$config['thumb_marker'] 	= '';
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

				$i = $this->input;
				//$tgl= date('Y-m-d H:i:s');
				
				$data = array(	
								'id_sk'	=> $i->post('id_sk'),
								'tujuan'	=> $i->post('tujuan'),
								'tgl_surat'		=> $i->post('tgl_surat'),
								'tgl_catat'	=> date('y-m-d'),
								'no_surat'		=> $i->post('no_surat'),
								'lampiran'		=> $i->post('lampiran'),
								'perihal'		=> $i->post('perihal'),
								'isi_ringkas'		=> $i->post('isi'),
								
								'file'	=> $upload_data['uploads']['file_name']
				 			 );

				$this->surat_model->insert('surat_keluar',$data);	
				$this->session->set_flashdata('sukses','surat keluar barhasil ditambah');
				redirect(base_url('sk'));
		}}
		// Default page
		$data = array(	'title'		=> 'Tambah Surat Keluar',
						'isi'		=> 'admin/suratkeluar/create');
		$this->load->view('admin/layout/wrapper',$data);
	}
	function updatesk($id_sk){
		$tbl = 'surat_keluar';
        $field = '*';
        $key = 'id_sk';
        $args = $id_sk;
		$surat	= $this->surat_model->getData($tbl,$field,$key,$args);
		
		$v = $this->form_validation;
		$v->set_rules('tujuan','isi','required');
		
		if($v->run()) {
			if(!empty($_FILES['file']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/suratkeluar/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg|pdf|jpeg';
			$config['max_size']			= '1000'; // KB			
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('file')) {
		
		$data = array(	'title'		=> 'Edit Surat Keluar',
						'error'		=> $this->upload->display_errors(),
						'isi'		=> 'admin/suratkeluar/edit');
		$this->load->view('admin/layout/wrapper', $data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/suratkeluar/'.$upload_data['uploads']['file_name']; 
				$config['new_image'] 		= './assets/upload/image/thumbs/';
				$config['create_thumb'] 	= TRUE;
				$config['quality'] 			= "100%";
				$config['maintain_ratio'] 	= FALSE;
				$config['width'] 			= 360; // Pixel
				$config['height'] 			= 200; // Pixel
				$config['x_axis'] 			= 0;
				$config['y_axis'] 			= 0;
				$config['thumb_marker'] 	= '';
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				
			$i = $this->input;
			$slug = $surat['id_sk'].'-'.url_title($i->post('tujuan'),'dash', TRUE);
			unlink('./assets/upload/image/suratkeluar'.$surat['file']);
			$data = array(		
								'id_sk'	=> $surat['id_sk'],
								'tujuan'	=> $i->post('tujuan'),
								'isi_ringkas'		=> $i->post('isi'),
								'no_surat'	=> $i->post('no_surat'),
								'tgl_surat'		=> $i->post('tgl_surat'),
								'tgl_catat'		=> date('y-m-d'),
								'file'	=> $upload_data['uploads']['file_name']
							);
			$this->surat_model->updatesm($tbl,$key,$args,$data);		
			$this->session->set_flashdata('sukses','surat telah diedit dan file telah diganti');
			redirect(base_url('sk'));
		}}else{
			$i = $this->input;
			$slug = $surat['id_sk'].'-'.url_title($i->post('tujuan'),'dash', TRUE);
			$data = array(		
			'id_sk'	=> $surat['id_sk'],
			'tujuan'	=> $i->post('tujuan'),
			'isi_ringkas'		=> $i->post('isi'),
			'no_surat'	=> $i->post('no_surat'),
			'tgl_surat'		=> $i->post('tgl_surat'),
			'tgl_catat'		=> date('y-m-d'),
			
		);
$this->surat_model->updatesm($tbl,$key,$args,$data);		
$this->session->set_flashdata('sukses','surat telah diedit dan file tidak diganti');
redirect(base_url('sk'));
		}}
		$data = array(	'title'		=> 'Edit Surat Keluar',
						'isi'		=> 'admin/suratkeluar/edit',
						'surat' => $surat);
		$this->load->view('admin/layout/wrapper',$data);
    }
    function deletesk(){
        $id_sk = $this->uri->segment(3);
        $this->surat_model->deletesk($id_sk);
        redirect('sk');
    }
    function cetak(){
		
		$idu = $this->uri->segment(3);
		$a['datpil1']	= $this->db->query("SELECT * FROM surat_keluar WHERE id_sk = '$idu'")->row();	
			
		$this->load->view('admin/suratkeluar/print', $a);
	  }
	  public function laporan(){
		$surat = $this->surat_model->getDAll('surat_keluar','*','id_sk','DESC');

		$data = array(	'title'		=> 'TRANSAKSI',
						'surat'	=> $surat,
					);
		$this->load->view('admin/suratkeluar/laporan',$data);
	}
	public function filter(){
		$awal = $this->input->get('awal');
		$akhir = $this->input->get('akhir');
		$this->surat_model->filter($awal,$akhir);
		redirect('sk');
	}
}
    ?>