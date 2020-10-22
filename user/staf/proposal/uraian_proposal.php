<?php 
	$id_proposal = $_GET['id_proposal'];

	$data_proposal = $proposal->ambil_proposal($id_proposal);
	$uraian = $proposal->ambil_uraian_proposal($id_proposal);

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
<hr>

<div class="row">
	<div class="col-md-6">
		<h1>Uraian Proposal</h1>
	</div>
	<div class="col-md-6">
		<div class="" style="margin-top: 30px; text-align: right;">
		<a href="index.php?halaman=tambah_uraian&id_proposal=<?php echo $id_proposal ?>" class="btn btn-primary">Tambah</a>
			
		</div>
	</div>
</div>
<hr>
<table class="table table-bordered">
<thead>
	<tr>
		<th>No</th>
		<th>Uraian</th>
		<th>Tanggal Uraian</th>
		<th>Kredit</th>
		<th>Opsi</th>
	</tr>
</thead>
<tbody>
	<?php foreach ($uraian as $key => $value): ?>
		
	<tr>
		<td><?php echo $key+1 ?></td>
		<td><?php echo tanggal_indo($value['tgl_uraian']) ?></td>
		<td><?php echo $value['nama_uraian'] ?></td>
		<td><?php echo format_angka($value['kredit']) ?></td>
		<td>
			<a href="">Ubah</a>
			<a href="">Hapus</a>
		</td>
	</tr>
	<?php endforeach ?>
</tbody>
</table>
