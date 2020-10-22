<?php 
// mendapatkan id user dari url
$id_kelas = $_GET['id_kelas'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$kelas->hapus_kelas($id_kelas);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=kelas'</script>";
?>