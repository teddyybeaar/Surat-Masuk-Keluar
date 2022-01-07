
<html>
<head>
	<title>Cetak Surat Masuk</title>
	<link href="<?php echo base_url()?>assets/front/vendor/bootstrap/css/bootstrap.css?v2" rel="stylesheet">
</head>
<body onload="print()">
<page size="A4" layout="portrait">
<style>

</style>



<table width="700" border="0" cellspacing="1" cellpadding="1" class=no-style>
  <tr>
    <td align="center" width="16%" rowspan="2"><img src="<?php echo base_url('assets/upload/image/kop.png')?>" width="80" height="80"></td>
    <td valign=top align="center" nowrap><h2>SMP NEGERI 1 CIAMPEA</h2></td>
  </tr>
  <tr>
    <td width="84%" align="center">
	JL. LET. SUKARNA NO. 66
	CIAMPEA 
	BOGOR 
	JAWA BARAT <b><br>Telp : </b>( 0251 ) 8621166
	</td>
  </tr>
  
</table><br><br>
<table width="700" border="0" align=center cellspacing="1" cellpadding="1" class=no-style>
   <tr> 
    <td align=center> <br/><p><b>SURAT MASUK</b></p></td>
    
  </tr>
	
</table>	<br/>

<table  border="0" align="left">

		<tr>
		<td>Nomor Surat</td><td>:</td><td><strong><?php echo $datpil1->no_surat?></strong></td></tr>
		<td>Asal Surat</td><td>:</td><td><strong><?php echo $datpil1->dari?></strong></td></tr>
		<tr><td>Tanggal Surat</td><td>:</td><td><strong><?php echo $datpil1->tgl_surat?></strong></td></tr>
		<tr><td>Tanggal Diterima</td><td>:</td><td><strong><?php echo $datpil1->tgl_diterima?></strong></td></tr>
		<tr><td>Isi</td><td>:</td><td><strong><?php echo $datpil1->isi_ringkas?></strong></td></tr>
		</tr>
</table>
<table width="700" border="0" align=center cellspacing="1" cellpadding="1" class=no-style>
   <tr> 
    <td align=center> <br/><p><b>DISPOSISI</b></p></td>
    
  </tr>
	
</table>	<br/>

<table  border="0" align="left">
<?php 
	if (!empty($datpil3)) {
		foreach ($datpil3 as $d3) {
		'<tr>';
	echo'<tr><td>Diteruskan Kepada</td><td>:</td><td><strong>'.$d3->tujuan.'</strong></td></tr>';
	echo	'<tr><td>Sifat</td><td>:</td><td><strong>'.$d3->sifat.'</strong></td></tr>';
	echo	'<tr><td>Isi Disposisi</td><td>:</td><td><strong>'.$d3->isi.'</strong></td></tr>';
	echo	'<tr><td>Isi Batas Waktu</td><td>:</td><td><strong>'.$d3->batas.'</strong></td></tr>';
		
		'<tr>';
		}}
		else{
			echo '<h4><i><center>--Tidak ada Data Disposisi--</center></i></h4>';
		}
		?>
	</table>

<table width="700" border="0" cellspacing="1" cellpadding="1" class=no-style>
  <tr>
    
  </tr>
  <tr>
    <td width="50%" align=right valign=midle height=150>
	Mengetahui<br>Kepala SMPN 1 Ciampea<br/> 
	</td>
    
  </tr>
  <tr align=right valign=bottom>
    <td>
	<u>-. SETLIM AMARUL, S. Pd</u><br/>NIP.197509092008011003
	</td>
    
  </tr></table>

</page>
</body>
</html>
