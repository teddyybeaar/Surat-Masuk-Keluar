<?php
// Session 
if($this->session->flashdata('sukses')) { 
	echo '<div class="alert alert-success">';
	echo $this->session->flashdata('sukses');
	echo '</div>';
} 
// Error
echo validation_errors('<div class="alert alert-success">','</div>'); 
?>
<form action="<?php echo base_url('surat/updatesm/'.$surat['id_sm']);?>" method="post" enctype="multipart/form-data" >


<div class="col-md-6">
    <div class="form-group">
        <label>Dari</label>
        <input type="text" name="dari" placeholder="Pengirim Surat" value="<?php echo $surat['dari'] ?>" required class="form-control">
    </div>
	<div class="form-group">
        <label>No Surat</label>
        <input type="text" name="no_surat" placeholder="Nomor Surat" value="<?php echo $surat['no_surat'] ?>" required class="form-control">
    </div>
    <div class="form-group">
        <label>Lampiran</label>
        <input type="text" name="lampiran" placeholder="Lampiran" value="<?php echo $surat['lampiran'] ?>" required class="form-control">
    </div>
    <div class="form-group">
        <label>Perihal</label>
        <input type="text" name="perihal" placeholder="Perihal" value="<?php echo $surat['perihal'] ?>" required class="form-control">
    </div>
</div>

    <div class="col-md-6">
   <div class="form-group">
    	<label>Berkas</label>
        <input type="file" name="file" class="form-control" id="file">
        <div id="imagePreview"></div>
        <img src="<?php echo base_url('assets/upload/image/suratmasuk/'.$surat['file'])?>" style="position: absolute;height: 150px;width: 150px;margin-left: 5px;">
    </div>
</div>
<div class="col-md-6">

<div class="form-group">
        <label>Tanggal Surat</label>
        <input type="date" name="tgl_surat" placeholder="" value="<?php echo $surat['tgl_surat'] ?>" required class="form-control">
    </div>

    
</div>
    <div class="col-md-12">
    <div class="form-group">
        <label>Isi Ringkas</label>
        <textarea name="isi" placeholder="Isi Ringkas Surat" required class="form-control" id="tex"><?php echo $surat['isi_ringkas']?></textarea>
    </div>
    </div>


<div class="col-md-12">
	<input type="submit" name="submit" value="Simpan" class="btn btn-primary">
    <input type="reset" name="reset" value="Reset" class="btn btn-default">
    <a href="<?php echo base_url('surat')?>" class="btn btn-success"><i class="fa fa-arrow-left"></i> Kembali </a><br>
</div>

</form>