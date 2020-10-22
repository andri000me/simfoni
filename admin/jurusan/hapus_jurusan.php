<?php 
// mendapatkan id user dari url
$id_jurusan = $_GET['id_jurusan'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$jurusan->hapus_jurusan($id_jurusan);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=jurusan'</script>";
?>