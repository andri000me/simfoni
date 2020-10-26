<?php 
// mendapatkan id user dari url
$id_jadwal = $_GET['id_jadwal'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$jadwal->hapus_jadwal($id_jadwal);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=tampil_jadwal'</script>";
?>