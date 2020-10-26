<div class="row">
	<div class="col-md-6">
		<h3>Tambah Data Jadwal Tetap Ruangan</h3>
		<h3>Sekolah Sukma Bangsa <?php echo  ($db_lokasi)?></h3>
	</div>

	<div class="col-md-6">
		<div class="tambah-user">
		<a href="index.php?halaman=tampil_jadwal" class="btn btn-primary">Tampil Data Jadwal Tetap pemakaian Ruangan</a>
			
		</div>
	</div>



</div>
<?php 
	
	$data_hari = $hari->tampil_hari();
	
	$data_ruang = $ruang->tampil_ruang();
	
	$data_jenjang = $jenjang->tampil_jenjang_pjruangan();
	

	// echo "<pre>";
	// print_r($data_jenjang);
	// echo "</pre>";

	// echo "<pre>";
	// print_r($data_mapel);
	// echo "</pre>";

	// echo "<pre>";
	// print_r($data_jenjang);
	// echo "</pre>";
?>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST">			
					
		
			

			
			<div class="form-group">
				<label>Level</label>
				<select class="form-control" name="id_jenjang" required="">
					<option value="">Nama Level</option>
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang'] ?>" > <?php echo $value['nama_jenjang'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Nama Hari</label>
				<select class="form-control" name="id_hari" required="">
					<option value="">Nama Hari</option>
				<?php foreach ($data_hari as $key => $value): ?>
					<option value="<?php echo $value['id_hari'] ?>" > <?php echo $value['hari'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>



			<div class="form-group">
				<label>Nama Ruang</label>
				<select class="form-control" name="id_ruang" >
				<option value="">Pilih ruang</option>
				<?php foreach ($data_ruang as $key => $value): ?>
					<option  value="<?php echo $value['id_ruang'] ?>" > <?php echo $value['nama_ruang'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Jam Pemakaian</label>
				<input type="text" name="id_jam" class="form-control" required="" placeholder="isikan jam awal dan akhir, contoh 07.30-08.40 per sesi">
			</div>


			<div class="form-group">
				<label>Keperluan</label>
				<input type="text" name="keperluan" class="form-control" required="" placeholder="isikan KBM/Ujian Online/Presentasi atau keperluan lainnya">
			</div>



			

			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$jadwal->simpan_jadwal($_POST['id_jenjang'], $_POST['id_hari'], $_POST['id_jam'], $_POST['id_ruang'], $_POST['keperluan'] );

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tampil_jadwal'</script>";
			}
		?>

	</div>
</div>
