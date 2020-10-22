<div class="row">
	<div class="col-md-6">
		<h3>Tambah Data Pemakaian Ruangan</h3>
	</div>
	


</div>
<?php 
	
	$data_guru = $guru->tampil_guru_pjruangan();
	$data_jenjang = $jenjang->tampil_jenjang_pjruangan();
	$data_ruang = $ruang->tampil_ruang();
	$data_status = $status->tampil_status();
	

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
				<label>Nama Pengguna</label>
				<select class="form-control" name="id_guru" required="">
					<option value="">Nama Guru</option>
				<?php foreach ($data_guru as $key => $value): ?>
					<option value="<?php echo $value['id_guru'] ?>" > <?php echo $value['nama_guru'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>


			<div class="form-group">
				<label>Level</label>
				<select class="form-control" name="id_jenjang" >
					 <option value="">Pilih Level</option> 
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option  value="<?php echo $value['id_jenjang'] ?>" > <?php echo $value['nama_jenjang'] ?> </option>					
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
					<label>Tanggal Pemakaian </label>
					<input type="date" name="waktu_1" class="" required=""> 	
					
			</div>

			<div class="form-group">
				<label>Jam Pemakaian</label>
				<input type="text" name="jam" class="form-control" required="" placeholder="isikan jam awal dan akhir, contoh 07.30-08.40">
			</div>


		

			<div class="form-group">
				<label>Keperluan</label>
				<input type="text" name="keperluan" class="form-control" required="" placeholder="isikan KBM/Ujian Online/Presentasi atau keperluan lainnya">
			</div>

			<div class="form-group">
				<label>Status Pengajuan</label>
				<select class="form-control" name="id_status" >
				<option value="">Pilih status pengajuan</option>
				<?php foreach ($data_status as $key => $value): ?>
					<option  value="<?php echo $value['id_status'] ?>" > <?php echo $value['nama_status'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>


			

			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$peminjaman->simpan_peminjaman($_POST['id_ruang'], $_POST['id_status'], $_POST['id_jenjang'], $_POST['id_guru'], $_POST['waktu_1'], $_POST['jam'], $_POST['keperluan'] );

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tampil_ruang'</script>";
			}
		?>

	</div>
</div>
