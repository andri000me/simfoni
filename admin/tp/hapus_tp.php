<?php 
// mendapatkan id user dari url
$id_tp = $_GET['id_tp'];

//objek user yang menjalankan fugsi hapus user berdasarkan id_user di url
$tp->hapus_tp($id_tp);
echo "<script>alert('Data terhapus')</script>";
echo "<script>location='index.php?halaman=tp'</script>";
?>