<h1>Tambah Data Mata Pelajaran Kolaborasi 1</h1>
<hr>

<?php 
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	$data_mapel1 = $mapel1->tampil_mapel1_admin();
	
	$data_jenjang = $jenjang->tampil_jenjang_admin();

	// $data_kelas = $kelas->tampil_kelas();
	
	// $data_jenjang = $jenjang->tampil_jenjang();


	// echo "<pre>";
	// print_r($data_jenjang);
	// echo "</pre>";

	/*echo "<pre>";
	print_r($data_mapel);
	echo "</pre>";*/

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
				<select class="form-control" name="id_jenjang">
					<option value="">Pilih Level</option>
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang'] ?>" > <?php echo $value['nama_jenjang'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

					
			<div class="form-group">
				<label>Mata Pelajaran</label>
				<input type="text" name="nama_mapel1" class="form-control" required="">
			</div>

			<!-- <div class="form-group">
				<label>Mata Pelajaran</label>
				<input type="text" name="mapel2" class="form-control" required="">
			</div>

			<div class="form-group">
				<label>Mata Pelajaran</label>
				<input type="text" name="mapel3" class="form-control" required="">
			</div>

			<div class="form-group">
				<label>Mata Pelajaran</label>
				<input type="text" name="mapel4" class="form-control" required="">
			</div> -->

			
			


			
			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$mapel1->simpan_mapel1($_POST['id_jenjang'], $_POST['nama_mapel1']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=mapel1'</script>";
			}
		?>

	</div>
</div>