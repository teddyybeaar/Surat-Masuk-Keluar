    

   <br>

 
   

   

    <div class="dataTable_wrapper">
        <table class="table table-striped table-bordered table-hover" id="">
            <thead>
                <tr>
                    <th width="50">#</th>
                    <th>Tujuan Disposisi</th>
                    <th>Isi Disposisi</th>
                    <th>Sifat, Batas Waktu</th>
                   
                </tr>
            </thead>
            <tbody>
            <?php $i=1; foreach($disp->result() as $b){?>
				<tr>
					<td><?php echo $i;?></td>
					<td><?php echo $b->tujuan;?></td>
					<td><?php echo $b->isi; ?></td>
                    <td><?php echo '<i>'.$b->sifat.',</i> <br> Batas Waktu s.d ' .$b->batas; ?></td>

					
				</tr>
				<?php $i++; } ?>
				
            </tbody>
        </table>
        
	</div>
