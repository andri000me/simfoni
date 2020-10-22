<?php 
// mendapatkan id user dari url
$id_mapel3 = $_GET['id_mapel3'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$mapel3->hapus_mapel3($id_mapel3);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=mapel3'</script>";
?>