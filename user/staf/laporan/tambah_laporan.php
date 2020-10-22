<h1>Tambah Laporan</h1>
<hr>

<?php $data_periode = $periode->tampil_periode()?>
<?php $data_lokasi = $lokasi->tampil_lokasi()?>
<div class="row"> 
	<div class="col-md-6">
		<form method="POST">
			<div class="form-group">
				<label>Periode</label>
				<select class="form-control" name="id_periode" required="">
					<option value="">Pilih Periode</option>
					<?php foreach ($data_periode as $key => $value): ?>
						<option value="<?php echo $value['id_periode'] ?>" > <?php echo $value['nama_bulan'] ?> <?php echo $value['tahun_periode'] ?></option>
					<?php endforeach ?>
				</select>
			</div>

			<div class="form-group">
				<label>Pilih Lokasi</label>
				<select class="form-control" name="id_lokasi" required="">
					<option value="">Pilih Lokasi</option>
					<?php foreach ($data_lokasi as $key => $value): ?>
						<option value="<?php echo $value['id_lokasi'] ?>" > <?php echo $value['nama_lokasi'] ?> </option>
					<?php endforeach ?>
				</select>
			</div>

			<div class="form-group">
				<label>Tanggal Laporan</label>
				<input type="date" name="tgl_laporan" class="form-control" required="">
			</div>

			<div class="form-group">
				<label>Tanggal LPJ</label>
				<input type="date" name="tgl_lpj" class="form-control" required="">
			</div>

			<div class="form-group">
				<label>No Cek</label>
				<input type="" name="no_cek" class="form-control" required="">
			</div>

			<button class="btn btn-primary" name="simpan">Simpan</button>
		</form>

	<?php if (isset($_POST['simpan'])) 
	{
		$laporan->simpan_laporan($_POST['id_periode'], $_POST['id_lokasi'], $_POST['tgl_laporan'], $_POST['tgl_lpj'], $_POST['no_cek']);

		echo "<script>alert('data tersimpan')</script>";
		echo "<script>location='index.php?halaman=semua_laporan'</script>";

	}
	?>	

	</div>
</div>