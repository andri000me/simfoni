<?php 
// mendapatkan id user dari url
$id_guru = $_GET['id_guru'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$guru->hapus_guru($id_guru);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=guru'</script>";
?>