<?php 
// mendapatkan id user dari url
$id_mapel = $_GET['id_mapel'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$mapel->hapus_mapel($id_mapel);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=mapel'</script>";
?>