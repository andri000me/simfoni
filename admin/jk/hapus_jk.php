<?php 
// mendapatkan id user dari url
$id_jk = $_GET['id_jk'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$jk->hapus_jk($id_jk);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=jk'</script>";
?>