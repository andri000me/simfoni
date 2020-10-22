<h1>Tambah Data Pengguna</h1>
<hr>

<?php 
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	// $data_mapel = $mapel->tampil_mapel();
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	// $data_mapel4 = $mapel4->tampil_mapel4();
	$data_guru = $guru->tampil_guru_admin();
	$data_pengguna = $pengguna->tampil_pengguna();
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
				<label>Level</label>
				<select class="form-control" name="id_jenjang">
					<option value="">Pilih Level</option>
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang'] ?>" > <?php echo $value['nama_jenjang'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Nama Pengguna</label>
				<select class="form-control" name="id_guru">
					<option value="">Nama Guru</option>
				<?php foreach ($data_guru as $key => $value): ?>
					<option value="<?php echo $value['id_guru'] ?>" > <?php echo $value['nama_guru'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

					

			<div class="form-group">
				<label>Username</label>
				<input type="text" name="username_pengguna" class="form-control" required="">
			</div>

			<div class="form-group">
				<label>Password</label>
				<input type="password" name="password_pengguna" class="form-control" required="">
			</div>
			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$pengguna->simpan_pengguna($_POST['id_jenjang'], $_POST['id_guru'], $_POST['username_pengguna'], $_POST['password_pengguna']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=pengguna'</script>";
			}
		?>

	</div>
</div>