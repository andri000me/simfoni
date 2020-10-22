<?php 
// mendapatkan id user dari url
$id_peminjaman = $_GET['id_peminjaman'];
$id_guru = $_SESSION['pengguna']['id_guru'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$peminjaman->hapus_peminjaman($id_peminjaman, $id_guru);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=tampil_ruang'</script>";
?>