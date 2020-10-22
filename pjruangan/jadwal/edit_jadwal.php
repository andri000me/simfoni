
<?php  
	
	$id_jadwal = $_GET['id_jadwal'];
	//$id_guru = $_SESSION['pengguna']['id_guru'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

$detail_jadwal = $jadwal->ambil_jadwal($id_jadwal);

$data_hari = $hari->tampil_hari();
	
	$data_ruang = $ruang->tampil_ruang();
	
	$data_jenjang = $jenjang->tampil_jenjang_pjruangan();



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Data Jadwal Tetap Pemakaian Ruangan</title>
</head>
<body>
	<h3>Edit Data Jadwal Tetap Pemakaian Ruangan</h3>
	<hr>
	
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST">	


			<div class="form-group">

				<label>Level</label>

				<select class="form-control" name="id_jenjang" >
					<option value="">Nama Level</option>
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang']; ?>"  <?php if($value['id_jenjang']==$detail_jadwal['id_jenjang'])
					{echo "selected";} ?> > <?php echo $value['nama_jenjang'] ?> </option>	
				<?php endforeach ?>					
				</select>
			</div>


				
			
				
				
	



			<div class="form-group">
				<label>Nama Hari</label>
				<select class="form-control" name="id_hari" required="">
					<option value="">Nama Hari</option>
				<?php foreach ($data_hari as $key => $value): ?>
					<option value="<?php echo $value['id_hari'] ?>"  <?php if($value['id_hari']==$detail_jadwal['id_hari']){echo "selected";} ?> > <?php echo $value['hari'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>



			<div class="form-group">
				<label>Nama Ruang</label>
				<select class="form-control" name="id_ruang" >
				<option value="">Pilih ruang</option>
				<?php foreach ($data_ruang as $key => $value): ?>
					<option  value="<?php echo $value['id_ruang'] ?>" <?php if($value['id_ruang']==$detail_jadwal['id_ruang']){echo "selected";} ?> > <?php echo $value['nama_ruang'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			
			<div class="form-group">
				<label>Jam Pemakaian</label>
				<input type="text" name="id_jam" class="form-control" value="<?php echo $detail_jadwal['id_jam']; ?>" >
			</div>


			<div class="form-group">
				<label>Keperluan</label>
				<input type="text" name="keperluan" class="form-control" value="<?php echo $detail_jadwal['keperluan']; ?>" >
			</div>

			
			
			
			
			
			
			
			<button class="btn btn-primary" name="ubah">Ubah</button>

		</form>

		<?php 
			if (isset($_POST['ubah']))
			{
				$jadwal->ubah_jadwal($_POST['id_jenjang'], $_POST['id_hari'], $_POST['id_jam'], $_POST['id_ruang'], $_POST['keperluan'], $_GET['id_jadwal']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tampil_jadwal'</script>";
			}
		?>

	</div>
</div>

</body>
</html>