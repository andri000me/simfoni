
<?php  
	
	$id_project = $_GET['id_project'];
	$id_guru = $_SESSION['pengguna']['id_guru'];
// print_r($id_user);
// echo "</pre>";

$detail_project = $project->ambil_project($id_project);
$data_mapel = $mapel->tampil_mapel();
$data_kelas = $kelas->tampil_kelas();
$data_kelas2 = $kelas2->tampil_kelas2();
$data_kelas3 = $kelas3->tampil_kelas3();
$data_kelas4 = $kelas4->tampil_kelas4();
$data_guru = $guru->tampil_guru();
$data_jenjang = $jenjang->tampil_jenjang();
$data_semester = $semester->tampil_semester_admin();
$semua_mapel1 = $mapel1->tampil_mapel1();
$semua_mapel2 = $mapel2->tampil_mapel2();
$semua_mapel3 = $mapel3->tampil_mapel3();
$semua_mapel4 = $mapel4->tampil_mapel4();


// echo "<pre>";
// print_r($detail_project);
// echo "</pre>";
	
// // 	$data_jenjang = $jenjang->tampil_jenjang();

// 	echo "<pre>";
// print_r($semua_mapel1);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Data Class Project SMA</title>
</head>
<body>
	<h1>Edit Data Class Project SMA</h1>
	<hr>
	
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST">			
			
		
		

			<div class="form-group">
				<label>Level</label>
				<select class="form-control" name="id_jenjang">
<!-- 					<option value="">Pilih level</option> -->
					<?php foreach ($data_jenjang as $key => $value): ?>
						<option value="<?php echo $value['id_jenjang']; ?>" <?php if($value['id_jenjang']==$detail_project['id_jenjang']){echo "selected";} ?> > <?php echo $value['nama_jenjang'] ?> </option>
					<?php endforeach ?>
				</select>
			</div>
			
			<div class="form-group">
				<label>Semester</label>
				<select class="form-control" name="id_semester">
					<option value="">Pilih Semester</option>
					<?php foreach ($data_semester as $key => $value): ?>
						<option value="<?php echo $value['id_semester']; ?>" <?php if($value['id_semester']==$detail_project['id_semester']){echo "selected";} ?> > <?php echo $value['nama_semester'] ?> </option>
					<?php endforeach ?>
				</select>
			</div>
			
			<div class="form-group">
				<label>Kelas Peserta 1</label>
				<select class="form-control" name="id_kelas">
					<option value="">Pilih Kelas</option>
				<?php foreach ($data_kelas as $key => $value): ?>
					<option value="<?php echo $value['id_kelas'] ?>"  <?php if($value['id_kelas']==$detail_project['id_kelas']){echo "selected";} ?> > <?php echo $value['nama_kelas'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Kelas Peserta 2</label>
				<select class="form-control" name="id_kelas2">
					<option value="">Pilih kelas</option>
				<?php foreach ($data_kelas2 as $key => $value): ?>
					<option value="<?php echo $value['id_kelas2'] ?>"  <?php if($value['id_kelas2']==$detail_project['id_kelas2']){echo "selected";} ?> > <?php echo $value['nama_kelas2'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Kelas Peserta 3</label>
				<select class="form-control" name="id_kelas3">
					<option value="">Pilih kelas</option>
				<?php foreach ($data_kelas3 as $key => $value): ?>
					<option value="<?php echo $value['id_kelas3'] ?>"  <?php if($value['id_kelas3']==$detail_project['id_kelas3']){echo "selected";} ?> > <?php echo $value['nama_kelas3'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Kelas Peserta 4</label>
				<select class="form-control" name="id_kelas4">
					<option value="">Pilih kelas</option>
				<?php foreach ($data_kelas4 as $key => $value): ?>
					<option value="<?php echo $value['id_kelas4'] ?>"  <?php if($value['id_kelas4']==$detail_project['id_kelas4']){echo "selected";} ?> > <?php echo $value['nama_kelas4'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Koordinator Class Project</label>
				<select class="form-control" name="id_guru">
					<!-- <option value="">Nama Guru</option> -->
				<?php foreach ($data_guru as $key => $value): ?>
					<option value="<?php echo $value['id_guru'] ?>"  <?php if($value['id_guru']==$detail_project['id_guru']){echo "selected";} ?> > <?php echo $value['nama_guru'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Tema Class Project</label>
				<input type="text" name="tema_project" class="form-control" value="<?php echo $detail_project['tema_project']; ?>">
			</div>

			<div class="form-group">
					<label>Waktu Pelaksanaan</label>
					<input type="date" name="waktu_1" class="" value="<?php echo $detail_project['waktu_1']; ?>" > 	
					<b>s/d</b>	
					<input type="date" name="waktu_2" class="" value="<?php echo $detail_project['waktu_2']; ?>">	
			</div>



			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 1</label>
				<select class="form-control" name="id_mapel1">
					<option value="">Pilih Mata Pelajaran Kolaborasi 1</option>
				<?php foreach ($semua_mapel1 as $key => $value): ?>
					<option value="<?php echo $value['id_mapel1'] ?>" <?php if($value['id_mapel1']==$detail_project['id_mapel1']){echo "selected";} ?>  > <?php echo $value['nama_mapel1'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 2</label>
				<select class="form-control" name="id_mapel2">
					<option value="">Pilih Mata Pelajaran Kolaborasi 2</option>
				<?php foreach ($semua_mapel2 as $key => $value): ?>
					<option value="<?php echo $value['id_mapel2'] ?>" <?php if($value['id_mapel2']==$detail_project['id_mapel2']){echo "selected";} ?>  > <?php echo $value['nama_mapel2'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 3</label>
				<select class="form-control" name="id_mapel3">
					<option value="">Pilih Mata Pelajaran Kolaborasi 3</option>
				<?php foreach ($semua_mapel3 as $key => $value): ?>
					<option value="<?php echo $value['id_mapel3'] ?>" <?php if($value['id_mapel3']==$detail_project['id_mapel3']){echo "selected";} ?>  > <?php echo $value['nama_mapel3'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Mata Pelajaran Kolaborasi 4</label>
				<select class="form-control" name="id_mapel4">
					<option value="">Pilih Mata Pelajaran Kolaborasi 4</option>
				<?php foreach ($semua_mapel4 as $key => $value): ?>
					<option value="<?php echo $value['id_mapel4'] ?>" <?php if($value['id_mapel4']==$detail_project['id_mapel4']){echo "selected";} ?>  > <?php echo $value['nama_mapel4'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>

			<div class="form-group">
				<label>Hasil Produk</label>
				<input type="text" name="hasil_project" class="form-control" value="<?php echo $detail_project['hasil_project']; ?>">
			</div>

			<div class="form-group">
				<label>Perkiraan Biaya</label>
				<input type="text" name="biaya_project" class="form-control" value="<?php echo $detail_project['biaya_project']; ?>">
			</div>
			
			<button class="btn btn-primary" name="ubah">Ubah</button>

		</form>

		<?php 
			if (isset($_POST['ubah']))
			{
				$project->ubah_class_project($_POST['id_jenjang'], $_POST['id_semester'], $_POST['id_kelas'], $_POST['id_kelas2'], $_POST['id_kelas3'], $_POST['id_kelas4'], $_POST['id_guru'], $_POST['tema_project'], $_POST['waktu_1'], $_POST['waktu_2'], $_POST['id_mapel1'], $_POST['id_mapel2'], $_POST['id_mapel3'], $_POST['id_mapel4'], $_POST['hasil_project'], $_POST['biaya_project'], $_GET['id_project']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tampil_class_project'</script>";
			}
		?>

	</div>
</div>

</body>
</html>