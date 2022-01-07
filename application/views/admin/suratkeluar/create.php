
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

<form action="<?php echo base_url('sk/create') ?>" method="post" enctype="multipart/form-data">




<div class="col-md-6">
    <div class="form-group">
        <label>Tujuan*</label>
        <input type="text" name="tujuan" placeholder="Pengirim Surat" required class="form-control">
    </div>
	<div class="form-group">
        <label>No Surat*</label>
        <input type="text" name="no_surat" placeholder="Nomor Surat" required class="form-control">
    </div>
    <div class="form-group">
        <label>Lampiran*</label>
        <input type="text" name="lampiran" placeholder="Lampiran" required class="form-control">
    </div>
    <div class="form-group">
        <label>Perihal*</label>
        <input type="text" name="perihal" placeholder="Perihal" required class="form-control">
    </div>
</div>


    <div class="col-md-6">
   <div class="form-group">
    	<label>Berkas*</label>
        <input type="file" name="file" class="form-control" id="file">
        <div id="imagePreview"></div>
    </div>
</div>
<div class="col-md-6">
<div class="form-group">
        <label>Tanggal Surat*</label>
        <input type="date" name="tgl_surat" placeholder="" required class="form-control">
    </div>

    
</div>
    <div class="col-md-12">
    <div class="form-group">
        <label>Isi Ringkas*</label>
        <textarea name="isi" placeholder="Isi Ringkas Surat" required class="form-control" id=""></textarea>
    </div>
    </div>




<div class="col-md-12">
<input type="submit" name="submit" value="Simpan" class="btn btn-primary">
    <input type="reset" name="reset" value="Reset" class="btn btn-default">
    <a href="<?php echo base_url('sk')?>" class="btn btn-success"><i class="fa fa-arrow-left"></i> Kembali </a><br>
</div>

</form>