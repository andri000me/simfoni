<h1>Tambah Data Pengguna</h1>
<hr>

<?php 
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	
	$data_kelas = $kelas->tampil_kelas_admin();
	
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
				<label>Nama Kelas</label>
				<input type="text" name="nama_kelas" class="form-control" required="">
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
				<label>Status</label>
				<select class="form-control" name="status" value="">
					<option value="Aktif">Aktif</option>
					<option value="Tidak Aktif">Tidak Aktif</option>
				</select>
		</div>


			
			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$kelas->simpan_kelas($_POST['nama_kelas'], $_POST['id_jenjang'], $_POST['status']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=kelas'</script>";
			}
		?>

	</div>
</div>