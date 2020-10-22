<?php 
// mendapatkan id user dari url
$id_mapel4 = $_GET['id_mapel4'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$mapel4->hapus_mapel4($id_mapel4);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=mapel4'</script>";
?>