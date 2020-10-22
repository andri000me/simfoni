<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=tutorialweb-export.xls");
 
// Tambahkan table


	// $user adalah objek user dari class.php
	// tampil_user adalah fungsi pada class user dari class.php
	// objek user menjalankan fungsi tampil user
	$data_lulusan = $lulusan->tampil_lulusan_admin();
	/*$data_jenjang = $jenjang->tampil_jenjang_admin();
	$data_kelas = $kelas->tampil_kelas_admin();*/
// 	echo "<pre>";
// print_r($data_pengguna);
// echo "</pre>";

?>