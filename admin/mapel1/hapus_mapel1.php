<?php 
// mendapatkan id user dari url
$id_mapel1 = $_GET['id_mapel1'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$mapel1->hapus_mapel1($id_mapel1);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=mapel1'</script>";
?>