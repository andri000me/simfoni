<?php 
// mendapatkan id user dari url
$id_mapel2 = $_GET['id_mapel2'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$mapel2->hapus_mapel2($id_mapel2);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=mapel2'</script>";
?>