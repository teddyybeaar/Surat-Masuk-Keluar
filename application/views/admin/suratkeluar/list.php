
<a href="<?php echo base_url('sk/create')?>" class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Tambah Surat</a>
<a href="<?php echo base_url('sk/laporan')?>" class="btn btn-success" target="_blank"><i class="fa fa-print"></i> Cetak Laporan </a>


<br>

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
	
  <div class="col-md-4 pull-right">
    <div class="input-group input-daterange">

      <input type="text" id="min-date" class="form-control date-range-filter" data-date-format="yyyy-mm-dd" placeholder="From:">

      <div class="input-group-addon">to</div>

      <input type="text" id="max-date" class="form-control date-range-filter" data-date-format="yyyy-mm-dd" placeholder="To:">

    </div>
  </div>

	
        <table class="table table-striped table-bordered table-hover" id="my-table">
		
            <thead>
                <tr>
                    <th width="10">#</th>
                    <th>no Surat</th>
                    <th>Tujuan</th>
                    <th>Tanggal</th>
                    
                    <th>Perihal</th>
					<th>Berkas</th>
					<th width="105">Action</th>
                </tr>
            </thead>
            <tbody>
				<?php $i=1; foreach($surat->result() as $admin){?>
				<tr>
					<td><?php echo $i;?></td>
					<td><?php echo $admin->no_surat;?></td>
					<td><?php echo $admin->tujuan;?></td>
					<td><?php echo $admin->tgl_surat;?></td>
					
					<td><?php echo $admin->perihal; ?></td>
					<td><img width="90" height="100" src="<?php echo base_url('assets/upload/image/suratkeluar/'.$admin->file)?>"><a target="blank_" href="<?php echo base_url('assets/upload/image/suratkeluar/'.$admin->file)?>">
					<br><u></u></a></td>
					<td>
						<a href="<?php echo base_url('sk/updatesk/'.$admin->id_sk);?>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a>
						<a href="<?php echo base_url('sk/cetak/'.$admin->id_sk);?>" class="btn btn-success" title="Cetak" target="_blank"><i class="fa fa-print"></i></a>
						<a href="" class="btn btn-danger" data-toggle="modal" data-target="#Delete<?php echo $admin->id_sk;?>" title="Hapus" ><i class="fa fa-trash"></i></a>
						
						<!-- MOdal delete -->
						<div class="modal fade" id="Delete<?php echo $admin->id_sk;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h3 class="modal-title">Apakah ingin Menghapus?</h3>
									</div>
									<div class="modal-body form">
										<table class="table table-striped table-bordered">
										
											<tr>
												<td>Tujuan</td>
												<td width="10">:</td>
												<td><?php echo $admin->tujuan?></td>
											</tr>
											<tr>
												<td>Isi</td>
												<td>:</td>
												<td><?php echo $admin->isi_ringkas?></td>
											</tr>
                                            <tr>
												<td>Tanggal</td>
												<td>:</td>
												<td><?php echo $admin->tgl_surat?></td>
											</tr>
											
										</table>
									</div>
									<div class="modal-footer">
										<a href="<?php echo base_url('sk/deletesk/'.$admin->id_sk);?>" type="button" class="btn btn-primary">Hapus</a>
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
		
