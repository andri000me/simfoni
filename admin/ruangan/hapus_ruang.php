<?php 
// mendapatkan id user dari url
$id_peminjaman = $_GET['id_peminjaman'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$peminjaman->hapus_peminjaman_pjruangan($id_peminjaman);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=tampil_ruang'</script>";
?>