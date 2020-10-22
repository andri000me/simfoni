<?php 
// mendapatkan id user dari url
$id_statuspt = $_GET['id_statuspt'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$statuspt->hapus_statuspt($id_statuspt);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=statuspt'</script>";
?>