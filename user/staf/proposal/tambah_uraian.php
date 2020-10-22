<?php 
	$id_proposal = $_GET['id_proposal'];

	$data_proposal = $proposal->ambil_proposal($id_proposal);
?>

<h1>Data Proposal</h1>
<hr>
<div class="row">
	<div class="col-md-4">
		<table class="table table-striped">
			<tr>
				<td>Nama Proposal</td>
				<td>: <?php echo $data_proposal['nama_proposal'] ?></td>
			</tr>
			<tr>
				<td>Tanggal Proposal</td>
				<td>: <?php echo tanggal_indo($data_proposal['tgl_proposal']) ?></td>
			</tr>
			<tr>
				<td>Debet</td>
				<td>: <?php echo format_angka($data_proposal['debet']) ?></td>
			</tr>
			
		</table>
	</div>
</div>
<br>

<h1>Input Data Uraian</h1>
<hr>
<div class="row">
	<div class="col-md-6">
		<form method="POST">
			<div class="form-group">
				<label>Nama Uraian</label>
				<input type="" name="nama_uraian" class="form-control">
			</div>

			<div class="form-group">
				<label>Tanggal Uraian</label>
				<input type="date" name="tgl_uraian" class="form-control" required="">
			</div>
			<div class="input-group">
				
				<span class="input-group-addon">Rp.</span>
				<input type="number" name="kredit" class="form-control" required="" placeholder="Kredit">
			</div>
			<br>
			<button name="simpan" class="btn btn-primary">Simpan</button>
		</form>


		<?php 
			if (isset($_POST['simpan'])) 
			{
				$proposal->simpan_uraian($id_proposal, $_POST['nama_uraian'], $_POST['tgl_uraian'], $_POST['kredit']);

				echo "<script>alert ('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=uraian_proposal&id_proposal=$id_proposal'</script>";
			}
		?>
	</div>
</div>


