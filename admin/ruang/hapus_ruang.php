<?php 
// mendapatkan id user dari url
$id_ruang = $_GET['id_ruang'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$ruang->hapus_ruang($id_ruang);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=ruang'</script>";
?>