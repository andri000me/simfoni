<?php 
// mendapatkan id user dari url
$id_guest = $_GET['id_guest'];
$id_guru = $_SESSION['pengguna']['id_guru'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$guest->hapus_guest($id_guest, $id_guru);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=tampil_guest'</script>";
?>