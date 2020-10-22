<?php 
// mendapatkan id user dari url
$id_project = $_GET['id_project'];
$id_guru = $_SESSION['pengguna']['id_guru'];


//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$project->hapus_class_project($id_project, $id_guru);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=tampil_class_project'</script>";
?>