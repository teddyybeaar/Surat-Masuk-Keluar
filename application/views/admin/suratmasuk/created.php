<?php
$mode		= $this->uri->segment(4);

if ($mode == "edt" || $mode == "act_edt") {
	$act		= "act_edt";
	$id		= $datpil->id;
	$id_surat	= $datpil->id_surat;
	$kpd_yth	= $datpil->tujuan;
	$isi_disposisi	= $datpil->isi;
	$sifat		= $datpil->sifat;
	$batas_waktu= $datpil->batas;
	
} else {
	$act		= "act_add";
	$id		= "";
	$id_surat	= $this->uri->segment(3);
	$kpd_yth	= "";
	$isi_disposisi	= "";
	$sifat		= "";
	$batas_waktu= "";
	$catatan	= "";
}
?>



<form action="<?php echo base_url()?>surat/disposisi/<?php echo $this->uri->segment(3) ?>/<?php echo $act ?>" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="<?php echo $id; ?>">
	
<div class="col-md-6">
    <div class="form-group">
        <label>Tujuan Disposisi</label>
        <input type="text" name="tujuan" placeholder="Tujuan Disposisi" value="<?php echo $kpd_yth ?>" required class="form-control">
    </div>
	<div class="form-group">
        <label>Sifat</label>
        <select name="sifat" class="form-control" value="<?php echo $sifat ?>">
        <option>Biasa</option>
        <option>Segera</option></select>
    </div>
<div class="form-group">
        <label>Batas Waktu</label>
        <input type="date" name="batas" placeholder="" value="<?php echo $batas_waktu ?>" required class="form-control">
    </div>

    <div class="form-group">
        <label>Isi Disposisi</label>
        <textarea name="isi" placeholder="Isi Disposisi"  required class="form-control" id=""><?php echo $isi_disposisi; ?></textarea>
    </div>
    </div>
    <input type="hidden" name="id_surat" value="<?php echo $id_surat; ?>">




<div class="col-md-12">
<input type="submit" name="submit" value="Simpan" class="btn btn-primary">
    <input type="reset" name="reset" value="Reset" class="btn btn-default">
    <a href="<?php echo base_url()?>surat/disposisi/<?php echo $this->uri->segment(3) ?>" class="btn btn-success"><i class="fa fa-arrow-left"></i> Kembali </a><br>
</div>

</form>