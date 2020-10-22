<?php 
// mendapatkan id user dari url
$id_semester = $_GET['id_semester'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$semester->hapus_semester($id_semester);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=semester'</script>";
?>