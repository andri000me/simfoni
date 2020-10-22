<?php 
	$id_laporan = $_GET['id_laporan'];
?>

<h1>Tambah Data Proposal</h1>
<hr>

<div class="row">
	<div class="col-md-6">
		<form method="POST">
			<div class="form-group">
				<label>Nama Proposal</label>
				<input type="" name="nama_proposal" class="form-control" required="">
			</div>
			<div class="form-group">
				<label>Tanggal Proposal</label>
				<input type="date" name="tgl_proposal" class="form-control" required="">
			</div>
			<div class="input-group">
				
				<span class="input-group-addon">Rp.</span>
				<input type="number" name="debet" class="form-control" required="" placeholder="Debet">
			</div>
			<br>
			<button name="simpan" class="btn btn-primary">Simpan</button>
		</form>


		<?php  
			if(isset($_POST['simpan']))
			{
				$id_proposal = $proposal->simpan_proposal($_POST['nama_proposal'], $_POST['tgl_proposal'], $_POST['debet']);

				$proposal->simpan_proposal_laporan($id_proposal, $id_laporan);

				echo "<script>alert ('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=semua_laporan'</script>";
			}
		?>
		
	</div>
	
</div>