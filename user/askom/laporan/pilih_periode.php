
<div class="row">
	<div class="col-md-6">
<h1>Pilih Periode Laporan</h1>
<hr>

<?php 
	$data_bulan = $bulan->tampil_bulan();

	$tahun_sekarang = date("Y");

	// echo $tahun_sekarang;

	for ($i=2006; $i <= $tahun_sekarang ; $i++) 
	{ 
		// menampung tahun dalam array
		$data_tahun[]= $i;
	}
?>

<!-- cek tahun
<pre>
	<?php print_r($data_tahun); ?>
</pre> -->



		<form method="POST">
			<div class="form-group">
				<label>Bulan</label>
				<select class="form-control" name="id_bulan" required="">
					<option>Pilih Bulan</option>
					<?php foreach ($data_bulan as $key => $value): ?>
					<option value="<?php echo $value['id_bulan']; ?>"><?php echo $value['nama_bulan']; ?></option>

					<?php endforeach ?>
				</select>
			</div>
			<div class="form-group">
				<label>Tahun</label>
				<select class="form-control" name="tahun_periode" required="">
					<option>Pilih Tahun</option>
					<?php foreach ($data_tahun as $key => $value): ?>
					<option value="<?php echo $value; ?>"><?php echo $value ?></option>	
					<?php endforeach ?>
					
				</select>
			</div>
			<button class="btn btn-primary" name="proses">Proses</button>
		</form>

		<?php 
			if (isset($_POST['proses']))
			{
				$id_periode = $periode->cek_periode($_POST['id_bulan'], $_POST['tahun_periode']);
				if ($id_periode == "kosong") 
				{
					echo "<script>alert('Periode tidak ada data') </script>";
					echo "<script>location='index.php?halaman=laporan' </script>";

				} else {
					echo "<script>location='index.php?halaman=tampil_laporan&id_periode=$id_periode' </script>";
				}
				
			}
		?>

	</div>

	
</div>