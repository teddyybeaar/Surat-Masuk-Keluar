<html>
<head>
	<title>Cetak PDF</title>
	<link href="<?php echo base_url()?>assets/front/vendor/bootstrap/css/bootstrap.css?v2" rel="stylesheet">
</head>
<body onload="print()">
<page size="A4" layout="portrait">
<h1 style="text-align: center;">Data Laporan Surat Keluar</h1>

<style>
table {
    border-collapse: collapse;
	width: 100%;
}

table, td, th {
    border: 1px solid black;
}
</style>

<table class="table table-bordered" border="1" align="center" width="100%">
<tr>
	<th>No. </th>
    <th>No Surat </th>
	<th>Tujuan</th>
	<th>Tanggal Surat</th>
	<th>Perihal</th>
	
</tr>
<?php
if( ! empty($surat)){
	$no = 1;
	foreach($surat as $data){
		echo "<tr>";
		echo "<td>".$no."</td>";
        echo "<td>".$data->no_surat."</td>";
        echo "<td>".$data->tujuan."</td>";
		echo "<td>".$data->tgl_surat."</td>";
        
        echo "<td>".$data->perihal."</td>";
		echo "</tr>";
		$no++;
	}
}
?>
</table>
</page>
</body>
</html>
