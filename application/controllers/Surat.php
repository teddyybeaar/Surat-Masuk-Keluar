<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Surat extends CI_Controller {
    function __construct(){
        parent::__construct();
        $this->load->model('surat_model');
    }
    function index(){
        $surat=$this->surat_model->surat();
        $data = array ('title' => 'Surat Masuk',
                        'isi' => 'admin/suratmasuk/list',
                        'surat' => $surat);
                        $this->load->view('admin/layout/wrapper',$data,$surat);

    }
    function xx(){
        
		$v = $this->form_validation;
		$v->set_rules('dari','isi','required');
		
		if($v->run()) {
			if(!empty($_FILES['file']['name'])) 
			$config['upload_path'] 		= './assets/upload/image/suratmasuk';
			$config['allowed_types'] 	= 'gif|jpg|png|pdf|jpeg';
			$config['max_size']			= '1000'; // KB			
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('file')) {
				
		$data = array(	'title'			=> 'Tambah Surat Masuk',
						'error'			=> $this->upload->display_errors(),
						'isi'			=> 'admin/suratmasuk/create');
		$this->load->view('admin/layout/wrapper',$data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				// Image Editor
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/suratmasuk'.$upload_data['uploads']['file_name']; 
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
								'id_sm'	=> $i->post('id_sm'),
								'dari'	=> $i->post('dari'),
								'tgl_surat'		=> $i->post('tgl_surat'),
								'tgl_diterima'	=> date('y-m-d'),
								'no_surat'		=> $i->post('no_surat'),
								'lampiran'		=> $i->post('lampiran'),
								'perihal'		=> $i->post('perihal'),
								'isi_ringkas'		=> $i->post('isi'),
								
								'file'	=> $upload_data['uploads']['file_name']
				 			 );

				$this->surat_model->insert('surat_masuk',$data);	
				$this->session->set_flashdata('sukses','surat masuk barhasil ditambah');
				redirect(base_url('surat'));
		}}
			
		// Default page
		$data = array(	'title'		=> 'Tambah Surat Masuk',
						'isi'		=> 'admin/suratmasuk/create');
		$this->load->view('admin/layout/wrapper',$data);
	}
	function save(){
		$dari = $this->input->post('dari');
        $isi = $this->input->post('isi');
		$tgl_surat = $this->input->post('tgl_surat');
		$no_surat = $this->input->post('no_surat');
		$tgl_diterima = $this->input->post('tgl_diterima');
        $this->surat_model->save($dari,$isi,$tgl_surat,$tgl_diterima,$no_surat);
        $this->session->set_flashdata('sukses','Admin berhasil ditambah');
        redirect('surat');
	}
	function tambah(){
		$data = array ('title' => 'Tambah Surat Masuk',
                        'isi' => 'admin/suratmasuk/create');
                        $this->load->view('admin/layout/wrapper',$data);
	}
	function deletesm(){
        $id_sm = $this->uri->segment(3);
        $this->surat_model->deletesm($id_sm);
        redirect('surat');
    }
    
      function updatesm($id_sm){
		$tbl = 'surat_masuk';
        $field = '*';
        $key = 'id_sm';
        $args = $id_sm;
		$surat	= $this->surat_model->getData($tbl,$field,$key,$args);
		
		$v = $this->form_validation;
		$v->set_rules('dari','isi','required');
		
		if($v->run()) {
			if(!empty($_FILES['file']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/suratmasuk/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg|pdf|jpeg';
			$config['max_size']			= '1000'; // KB			
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('file')) {
		
		$data = array(	'title'		=> 'Edit Surat Masuk',
						'error'		=> $this->upload->display_errors(),
						'isi'		=> 'admin/suratkeluar/edit');
		$this->load->view('admin/layout/wrapper', $data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name']; 
				$config['new_image'] 		= './assets/upload/image/suratmasuk/';
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
			unlink('./assets/upload/image/'.$surat['file']);
			$data = array(		
								'id_sm'	=> $surat['id_sm'],
								'dari'	=> $i->post('dari'),
								'isi_ringkas'		=> $i->post('isi'),
								'no_surat'	=> $i->post('no_surat'),
								'tgl_surat'		=> $i->post('tgl_surat'),
								'tgl_diterima'		=> date('y-m-d'),
								'file'	=> $upload_data['uploads']['file_name']
							);
			$this->surat_model->updatesm($tbl,$key,$args,$data);		
			$this->session->set_flashdata('sukses','surat telah diedit dan file telah diganti');
			redirect(base_url('surat'));
		}}else{
			$i = $this->input;
			$slug = $surat['id_sm'].'-'.url_title($i->post('dari'),'dash', TRUE);
			$data = array(		
			'id_sm'	=> $surat['id_sm'],
			'dari'	=> $i->post('dari'),
			'isi_ringkas'		=> $i->post('isi'),
			'no_surat'	=> $i->post('no_surat'),
			'tgl_surat'		=> $i->post('tgl_surat'),
			'tgl_diterima'		=> date('y-m-d'),
			
		);
$this->surat_model->updatesm($tbl,$key,$args,$data);		
$this->session->set_flashdata('sukses','surat telah diedit dan file tidak diganti');
redirect(base_url('surat'));
		}}
		$data = array(	'title'		=> 'Edit Surat Masuk',
						'isi'		=> 'admin/suratmasuk/edit',
						'surat' => $surat);
		$this->load->view('admin/layout/wrapper',$data);
	}
	function cetak(){
        $idu = $this->uri->segment(3);
		$a['datpil1']	= $this->db->query("SELECT * FROM surat_masuk WHERE id_sm = '$idu'")->row();	
		$a['datpil2']	= $this->db->query("SELECT tujuan FROM disposisi WHERE id_surat = '$idu'")->result();	
		$a['datpil3']	= $this->db->query("SELECT tujuan, isi, sifat, batas FROM disposisi WHERE id_surat = '$idu'")->result();	
		$this->load->view('admin/suratmasuk/print', $a);
	  }
	  public function laporan(){
		$surat = $this->surat_model->getDAll('surat_masuk','*','id_sm','DESC');

		$data = array(	'title'		=> 'TRANSAKSI',
						'surat'	=> $surat,
					);
		$this->load->view('admin/suratmasuk/laporan',$data);
	}
	function xxx(){
		$d=$this->surat_model->dis();
		$id_sm = $this->uri->segment(3);
		$cetak = $this->surat_model->get_sm_id($id_sm);
		if($cetak->num_rows() > 0){
			$i = $cetak->row_array();
			$data = array(
				'id_sm'    => $i['id_sm'],
				'dari'  => $i['dari'],
				'isi_ringkas'     => $i['isi_ringkas'],
				'no_surat'     => $i['no_surat'],
				'title' => 'Disposisi',
				'd' => $d,
				'isi' => 'admin/suratmasuk/disposisi',
				'cetak' => $cetak,
				);
			$this->load->view('admin/layout/wrapper',$data);
			
		}
	}
	function disposisi(){
		$mau_ke					= $this->uri->segment(4);
		$idu1					= $this->uri->segment(3);
		$idu2					= $this->uri->segment(5);
		
		//ambil variabel Postingan
		$idp					= addslashes($this->input->post('id'));
		$kpd_yth				= addslashes($this->input->post('tujuan'));
		$isi_disposisi			= addslashes($this->input->post('isi'));
		$sifat					= addslashes($this->input->post('sifat'));
		$batas_waktu			= addslashes($this->input->post('batas'));
		$id_surat				= addslashes($this->input->post('id_surat'));

		/* pagination */	
		$total_row		= $this->db->query("SELECT * FROM disposisi WHERE id_surat = '$idu1'")->num_rows();
		$per_page		= 10;

		$awal	= $this->uri->segment(4); 
		$awal	= (empty($awal) || $awal == 1) ? 0 : $awal;
		
		//if (empty($awal) || $awal == 1) { $awal = 0; } { $awal = $awal; }
		$akhir	= $per_page;
		
		$a['pagi']	= _page($total_row, $per_page, 4, base_url()."surat/disposisi/".$idu1."/p");
		
		$a['judul_surat']	= gval("surat_masuk", "id_sm", "perihal", $idu1);

		if ($mau_ke == "add") {
			$a['isi']		= "admin/suratmasuk/created";
			$a['title'] = 'Tambah Disposisi';
		}else if ($mau_ke == "edt") {
			$a['datpil']	= $this->db->query("SELECT * FROM disposisi WHERE id = '$idu2'")->row();	
			$a['isi']		= "admin/suratmasuk/created";
			$a['title'] = 'Edit Disposisi';
		} else if ($mau_ke == "act_add") {	
			$this->db->query("INSERT INTO disposisi VALUES (NULL, '$kpd_yth', '$isi_disposisi', '$sifat', '$batas_waktu','$id_surat')");
			
			$this->session->set_flashdata("k", "<div class=\"alert alert-success\" id=\"alert\">Data has been added</div>");
			redirect('/surat/disposisi/'.$id_surat);
		} else if ($mau_ke == "act_edt") {
			$this->db->query("UPDATE disposisi SET tujuan = '$kpd_yth', isi = '$isi_disposisi', sifat = '$sifat', batas = '$batas_waktu' WHERE id = '$idp'");
			$this->session->set_flashdata("k", "<div class=\"alert alert-success\" id=\"alert\">Data has been updated</div>");			
			redirect('/surat/disposisi/'.$id_surat);
		}else if($mau_ke == "del") {
			$this->db->query("DELETE FROM disposisi WHERE id = '$idu2'");
			$this->session->set_flashdata("k", "<div class=\"alert alert-success\" id=\"alert\">Data has been deleted </div>");
			redirect('surat/disposisi/'.$idu1);
		}else{
			$a['data']		= $this->db->query("SELECT * FROM disposisi WHERE id_surat = '$idu1' LIMIT $awal, $akhir ")->result();
			$a['title'] = 'Disposisi';
			$a['isi']		= "admin/suratmasuk/disposisi";
		}
		$this->load->view('admin/layout/wrapper',$a);
	}
	function created(){{
		$i = $this->input;
				//$tgl= date('Y-m-d H:i:s');
				
				$data = array(	
								'id'	=> $i->post('id'),
								'tujuan'	=> $i->post('tujuan'),
								'sifat'		=> $i->post('sifat'),
								'isi'		=> $i->post('isi'),
								'batas'	=> $i->post('batas'),
				 			 );

				$this->surat_model->insert('disposisi',$data);	
				$this->session->set_flashdata('sukses','surat masuk barhasil ditambah');
				redirect(base_url('surat/disposisi/id'));
							}
	}
	function dis($id){
		$tbl = 'disposisi';
        $field = '*';
        $key = 'id';
        $args = $id;
		$d	= $this->surat_model->getData($tbl,$field,$key,$args);
		$d=$this->surat_model->dis();
		$id = $this->uri->segment(4);
		$cetak = $this->surat_model->get_d_id($id);
		if($cetak->num_rows() > 0){
			$i = $cetak->row_array();
			$data = array(
				'id_sm'    => $i['id_sm'],
				'dari'  => $i['dari'],
				'isi_ringkas'     => $i['isi_ringkas'],
				'no_surat'     => $i['no_surat'],
				'title' => 'Disposisi',
				$id => 'add',
				'isi' => 'admin/suratmasuk/created',
				'cetak' => $cetak,
				'd' => $d
				);
			$this->load->view('admin/layout/wrapper',$data);
			
		}
}   
function diss(){
	
        $disp=$this->surat_model->dis();
        $data = array ('title' => 'Disposisi',
                        'isi' => 'admin/suratmasuk/l_disp',
                        'disp' => $disp);
                        $this->load->view('admin/layout/wrapper',$data,$disp);
}   
}

?>