<button data-toggle="modal" data-target="#Tambah" class="btn btn-success"><i class="glyphicon glyphicon-plus"></i> Tambah Admin</button>
<br />
<br />
<?php
// Session 
if($this->session->flashdata('sukses')) { 
	echo '<div class="alert alert-success">';
	echo $this->session->flashdata('sukses');
	echo '</div>';
} 
 
?>

    <div class="dataTable_wrapper">
        <table class="table table-striped table-bordered table-hover" id="">
            <thead>
                <tr>
                    <th width="50">#</th>
                    <th>Nama</th>
                    <th>Username</th>
                    <th width="130">Action</th>
                </tr>
            </thead>
            <tbody>
				<?php $i=1; foreach($admin->result() as $admin){?>
				<tr>
					<td><?php echo $i;?></td>
					<td><?php echo $admin->nama; ?></td>
					<td><?php echo $admin->username;?></td>
					<td>
						<a href="<?php echo base_url('admin/get_edit/'.$admin->id_admin);?>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a>
						<a href="" class="btn btn-danger" data-toggle="modal" data-target="#Delete<?php echo $admin->id_admin?>" title="Hapus" ><i class="fa fa-trash"></i></a>
						<!-- MOdal delete -->
						<div class="modal fade" id="Delete<?php echo $admin->id_admin?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h3 class="modal-title">Apakah ingin Menghapus?</h3>
									</div>
									<div class="modal-body form">
										<table class="table table-striped table-bordered">
										
											<tr>
												<td>Nama</td>
												<td width="10">:</td>
												<td><?php echo $admin->nama?></td>
											</tr>
											<tr>
												<td>Username</td>
												<td>:</td>
												<td><?php echo $admin->username?></td>
											</tr>
											
										</table>
									</div>
									<div class="modal-footer">
										<a href="<?php echo base_url('admin/delete/'.$admin->id_admin);?>" type="button" class="btn btn-primary">Hapus</a>
										<button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
									</div>
								</div><!-- /.modal-content -->
							</div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
					</td>
				</tr>
				<?php $i++; } ?>
				
            </tbody>
        </table>
	</div>
		
<!-- Bootstrap modal -->
<div class="modal fade" id="Tambah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title">Tambah Admin</h3>
            </div>
			<form method="post" action="<?php echo base_url('admin/save')?>" class="form-horizontal">  
            <div class="modal-body form">
                 <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Nama</label>
                            <div class="col-md-9">
                                <input name="nama" placeholder="Nama" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Username</label>
                            <div class="col-md-9">
                                <input name="username" placeholder="Username" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Password</label>
                            <div class="col-md-9">
                                <input name="password" placeholder="Password" class="form-control" type="password">
                                <span class="help-block"></span>
                            </div>
                        </div>  
                    </div>
               
            </div>
            <div class="modal-footer">
                <input type="submit" name="submit" value="Simpan" class="btn btn-primary">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
            
            </div>
			 </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
