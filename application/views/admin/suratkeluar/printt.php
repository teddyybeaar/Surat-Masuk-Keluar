
<html>
<head>
	<title>Cetak Surat Keluar</title>
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
    <td align=center> <br/><p><b>SURAT KELUAR</b></p></td>
    
  </tr>
	
</table>	<br/>

<table  border="0" align="left">

<?php
if( ! empty($cetak)){
	
	foreach($cetak->result() as $data){
		echo '<tr>';
		echo '<td>Nomor Surat</td><td>:</td><td><strong>'.$data->no_surat.'</strong></td></tr>';
		echo '<td>Tujuan Surat</td><td>:</td><td><strong>'.$data->tujuan.'</strong></td></tr>';
		echo '<tr><td>Tanggal Surat</td><td>:</td><td><strong>'.$data->tgl_surat.'</strong></td></tr>';
		echo '<tr><td>Tanggal Dicatat</td><td>:</td><td><strong>'.$data->tgl_catat.'</strong></td></tr>';
		echo '<tr><td>Isi</td><td>:</td><td><strong>'.$data->file.'</strong></td></tr>';
		echo "</tr>";
	}
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
