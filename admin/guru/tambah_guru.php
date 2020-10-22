<h1>Tambah Data Guru</h1>
<hr>

<?php 
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	
	
	$data_guru = $guru->tampil_guru_admin();
	$data_jenjang = $jenjang->tampil_jenjang_admin();


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
			<label>Nama Guru</label>
			<input type="text" name="nama_guru" class="form-control" required="">
			</div>

			<div class="form-group">
				<label>NIP</label>
				<input type="text" name="nip_guru" class="form-control" required="">
			</div>

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
				<label>Status Guru</label>
				<select class="form-control" name="status_guru" value="">
					<option value="SDK">SDK</option>
					<option value="NON SDK">NON SDK</option>
				</select>
		</div>
			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$guru->simpan_guru($_POST['id_jenjang'], $_POST['nama_guru'], $_POST['nip_guru'], $_POST['status_guru']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=guru'</script>";
			}
		?>

	</div>
</div>