<form action="<?php echo base_url('admin/update');?>" method="post" >


<div class="col-md-12">
    <div class="form-group">
        <label>Nama</label>
        <input type="text" name="nama" placeholder="Nama" value="<?php echo $nama?>" required class="form-control">
    </div>
</div>
<div class="col-md-6">
	<div class="form-group">
        <label>Username</label>
        <input type="text" name="username" placeholder="Username" value="<?php echo $username?>" required class="form-control">
    </div>
</div>
<div class="col-md-6">
	<div class="form-group">
        <label>Password</label>
        <input type="password" name="password" placeholder="Isi bila ingin diubah" class="form-control">
    </div>
    <input type="hidden" name="id_admin" value="<?php echo $id_admin?>">
</div>

	


<div class="col-md-12">
	<input type="submit" name="submit" value="Simpan" class="btn btn-primary">
    <input type="reset" name="reset" value="Reset" class="btn btn-default">
    <a href="<?php echo base_url('admin')?>" class="btn btn-success"><i class="fa fa-arrow-left"></i> Kembali </a><br>
</div>
</div>
</form>