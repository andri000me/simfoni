<?php 
// mendapatkan id user dari url
$id_pengguna = $_GET['id_pengguna'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$pengguna->hapus_pengguna($id_pengguna);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=pengguna'</script>";
?>