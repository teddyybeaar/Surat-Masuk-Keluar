    
<a href="<?php echo base_url()?>surat/disposisi/<?php echo $this->uri->segment(3) ?>/add" class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Tambah Surat</a>
<a href="<?php echo base_url('surat')?>" class="btn btn-success"><i class="fa fa-arrow-left"></i> Kembali </a><br>
   <br>

 
   <?php echo $this->session->flashdata("k");?>

   <div class="alert alert-info">Perihal Surat</b> : <i><?php echo $judul_surat; ?></i></div>

    <div class="dataTable_wrapper">
        <table class="table table-striped table-bordered table-hover" id="">
            <thead>
                <tr>
                    <th width="50">#</th>
                    <th>Tujuan Disposisi</th>
                    <th>Isi Disposisi</th>
                    <th>Sifat, Batas Waktu</th>
                    <th width="110">Action</th>
                </tr>
            </thead>
            <tbody>
            <?php 
		if (empty($data)) {
			echo "<tr><td colspan='5'  style='text-align: center; font-weight: bold'>--Data tidak ditemukan--</td></tr>";
		} else {
			$no 	= ($this->uri->segment(4) + 1);
			foreach ($data as $b) {
		?>
				<tr>
					<td><?php echo $no;?></td>
					<td><?php echo $b->tujuan;?></td>
					<td><?php echo $b->isi; ?></td>
                    <td><?php echo '<i>'.$b->sifat.',</i> <br> Batas Waktu s.d ' .$b->batas; ?></td>

					<td>
						<a href="<?php echo base_url()?>surat/disposisi/<?php echo $this->uri->segment(3)?>/edt/<?=$b->id;?>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a>
						<a href="" class="btn btn-danger" data-toggle="modal" data-target="#Delete<?php echo $b->id;?>" title="Hapus" ><i class="fa fa-trash"></i></a>
						
						<!-- MOdal delete -->
						<div class="modal fade" id="Delete<?php echo $b->id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h3 class="modal-title">Apakah ingin Menghapus?</h3>
									</div>
									<div class="modal-body form">
										<table class="table table-striped table-bordered">
										
											<tr>
												<td>Tujuan Disposisi</td>
												<td width="10">:</td>
												<td><?php echo $b->tujuan?></td>
											</tr>
											<tr>
												<td>Isi</td>
												<td>:</td>
												<td><?php echo $b->isi?></td>
                                            </tr>
                                            <tr>
												<td>Sifat</td>
												<td>:</td>
												<td><?php echo $b->sifat?></td>
											</tr>
											<tr>
												<td>Batas Waktu</td>
												<td>:</td>
												<td><?php echo $b->batas?></td>
											</tr>
											
										</table>
									</div>
									<div class="modal-footer">
										<a href="<?php echo base_url()?>surat/disposisi/<?php echo $this->uri->segment(3)?>/del/<?=$b->id;?>" type="button" class="btn btn-primary">Hapus</a>
										<button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
									</div>
								</div><!-- /.modal-content -->
							</div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
					</td>
				</tr>
				<?php $no++; }} ?>
				
            </tbody>
        </table>
        <center><ul class="pagination"><?php echo $pagi; ?></ul></center>
	</div>
