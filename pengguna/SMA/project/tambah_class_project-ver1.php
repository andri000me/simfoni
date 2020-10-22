<h1>Tambah Data Class Project</h1>
<hr>

<?php 
	$data_mapel = $mapel->tampil_mapel();
	$data_level = $level->tampil_level();


	// echo "<pre>";
	// print_r($data_level);
	// echo "</pre>";

	// echo "<pre>";
	// print_r($data_mapel);
	// echo "</pre>";
?>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST">			
			<div class="form-group">
				<label>Level</label>
				<select class="form-control" name="id_level" required="">
					<option value="">Pilih Level</option>
					<?php foreach ($data_level as $key => $value): ?>
						<option value="<?php echo $value['id_level'] ?>"> <?php echo $value['nama_level'] ?></option>						
					<?php endforeach ?>
				</select>
			</div>


			<div class="form-group">
				<label>Judul Class Project</label>
				<input type="" name="judul_project" class="form-control" required="">
			</div>

			<div class="form-group">
					<label>Waktu Pelaksanaan</label>
					<input type="date" name="waktu_1" class="" required=""> 	
					<b>s/d</b>	
					<input type="date" name="waktu_2" class="" required="">	
			</div>

					
			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 1</label>
				<select class="form-control" name="id_mapel1">
					<option value="">Pilih Mata Pelajaran Kolaborasi 1</option>
				<?php foreach ($data_mapel as $key => $value): ?>
					<option value="<?php echo $value['id_mapel'] ?>" > <?php echo $value['nama_mapel'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 2</label>
				<select class="form-control" name="id_mapel2">
					<option value="">Pilih Mata Pelajaran Kolaborasi 1</option>
				<?php foreach ($data_mapel as $key => $value): ?>
					<option value="<?php echo $value['id_mapel'] ?>" > <?php echo $value['nama_mapel'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 3</label>
				<select class="form-control" name="id_mapel3">
					<option value="">Pilih Mata Pelajaran Kolaborasi 1</option>
				<?php foreach ($data_mapel as $key => $value): ?>
					<option value="<?php echo $value['id_mapel'] ?>" > <?php echo $value['nama_mapel'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>


			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 4</label>
				<select class="form-control" name="id_mapel4">
					<option value="">Pilih Mata Pelajaran Kolaborasi 1</option>
				<?php foreach ($data_mapel as $key => $value): ?>
					<option value="<?php echo $value['id_mapel'] ?>" > <?php echo $value['nama_mapel'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>



			<div class="form-group">
				<label>Hasil Akhir</label>
				<input type="" name="hasil_akhir" class="form-control" required="">
			</div>

			<div class="form-group">
				<label>Biaya</label>
				<input type="" name="biaya" class="form-control" required="">
			</div>

			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$project->simpan_class_project($_POST['id_level'], $_POST['judul_project'], $_POST['waktu_1'], $_POST['waktu_2'], $_POST['id_mapel1'], $_POST['id_mapel2'], $_POST['id_mapel3'], $_POST['id_mapel4'], $_POST['hasil_akhir'], $_POST['biaya']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tambah_class_project'</script>";
			}
		?>

	</div>
</div>