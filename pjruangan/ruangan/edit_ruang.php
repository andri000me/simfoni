
<?php  
	
	$id_peminjaman = $_GET['id_peminjaman'];
	//$id_guru = $_SESSION['pengguna']['id_guru'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

$detail_peminjaman = $peminjaman->ambil_peminjaman($id_peminjaman);

$data_guru = $guru->tampil_guru_pjruangan();
$data_jenjang = $jenjang->tampil_jenjang_pjruangan();
$data_ruang = $ruang->tampil_ruang();
$data_status = $status->tampil_status();

$data_status_final = $status_final->tampil_status_final();
	


// echo "<pre>";
// print_r($detail_guest);
// echo "</pre>";
	
// // 	$data_jenjang = $jenjang->tampil_jenjang();

// 	echo "<pre>";
// print_r($semua_mapel1);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Data Pemakaian Ruangan</title>
</head>
<body>
	<h3>Edit Data Pemakaian Ruangan</h3>
	<hr>
	
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST">			
			
			<div class="form-group">
				<label>Nama Pengguna</label>
				<select class="form-control" name="id_guru" required="">
					<!--<option value="">Nama Guru</option>-->
				<?php foreach ($data_guru as $key => $value): ?>
					<option value="<?php echo $value['id_guru'] ?>" <?php if($value['id_guru']==$detail_peminjaman['id_guru']){echo "selected";} ?> > <?php echo $value['nama_guru'] ?> </option>				
				<?php endforeach ?>					
				</select>
			</div>


			<div class="form-group">
				<label>Level</label>
				<select class="form-control" name="id_jenjang">
					<!-- <option value="">Pilih level</option> -->
					<?php foreach ($data_jenjang as $key => $value): ?>
						<option value="<?php echo $value['id_jenjang']; ?>" <?php if($value['id_jenjang']==$detail_peminjaman['id_jenjang']){echo "selected";} ?> > <?php echo $value['nama_jenjang'] ?> </option>
					<?php endforeach ?>
				</select>
			</div>

			<div class="form-group">
				<label>Nama Ruang</label>
				<select class="form-control" name="id_ruang" >
				<option value="">Pilih ruang</option>
				<?php foreach ($data_ruang as $key => $value): ?>
					<option  value="<?php echo $value['id_ruang'] ?>" <?php if($value['id_ruang']==$detail_peminjaman['id_ruang']){echo "selected";} ?> > <?php echo $value['nama_ruang'] ?> </option>							
				<?php endforeach ?>					
				</select>
			</div>



			<div class="form-group">
					<label>Tanggal Pemakaian</label>
					<input type="date" name="waktu_1" class="" value="<?php echo $detail_peminjaman['waktu_1']; ?>" >					
			</div>


			<div class="form-group">
				<label>Jam Pemakaian</label>
				<input type="text" name="jam" class="form-control" value="<?php echo $detail_peminjaman['jam']; ?>" >
			</div>


		

			<div class="form-group">
				<label>Keperluan</label>
				<input type="text" name="keperluan" class="form-control" value="<?php echo $detail_peminjaman['keperluan']; ?>" >
			</div>

			<div class="form-group">
				<label>Status Pengajuan</label>
				<select class="form-control" name="id_status" >
				<option value="">Pilih status pengajuan</option>
				<?php foreach ($data_status as $key => $value): ?>
					<option  value="<?php echo $value['id_status'] ?>" <?php if($value['id_status']==$detail_peminjaman['id_status']){echo "selected";} ?> > <?php echo $value['nama_status'] ?> </option>									
				<?php endforeach ?>					
				</select>
			</div>
			
			<div class="form-group">
				<label>Status Persetujuan</label>
				<select class="form-control" name="id_status_final" >
				<option value="">Pilih status persetujuan</option>
				<?php foreach ($data_status_final as $key => $value): ?>
					<option  value="<?php echo $value['id_status_final'] ?>" <?php if($value['id_status_final']==$detail_peminjaman['id_status_final']){echo "selected";} ?> > <?php echo $value['nama_status_final'] ?> </option>									
				<?php endforeach ?>					
				</select>
			</div>


			<div class="form-group">
				<label>Keterangan</label>
				<input type="text" name="keterangan" class="form-control" placeholder="isikan alasan pembatalan" value="" >
			</div>
			

		

			
			
			
			
			<button class="btn btn-primary" name="ubah">Ubah</button>

		</form>

		<?php 
			if (isset($_POST['ubah']))
			{
				$peminjaman->ubah_peminjaman_pjruangan($_POST['id_guru'], $_POST['id_jenjang'], $_POST['id_ruang'], $_POST['waktu_1'], $_POST['jam'], $_POST['keperluan'], $_POST['id_status'], $_POST['id_status_final'], $_POST['keterangan'], $_GET['id_peminjaman']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tampil_ruang'</script>";
			}
		?>

	</div>
</div>

</body>
</html>