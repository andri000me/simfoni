<?php 
$id_periode = $_GET['id_periode'];
$data_periode = $periode->ambil_periode($id_periode);


$data_laporan = $laporan->tampil_laporan_periode($id_periode);
?>


<h1> Data Laporan Periode</h1>
<h4><?php echo $data_periode['nama_bulan'] ?> - <?php echo $data_periode['tahun_periode'] ?></h4>


<hr>

<!-- <pre><?php print_r($data_laporan) ?></pre> -->
<table class="table table-bordered">
	<thead>
		<tr>
			<th>No</th>
			<th>No Cek</th>
			<th>Lokasi</th>
			<th>Status</th>
			<th>Opsi</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_laporan as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['no_cek']; ?></td>
			<td><?php echo $value['nama_lokasi']; ?></td>
			<td>
				<?php if ($value['status_laporan']=='pending'): ?>
					<h4><span class="label label-danger">Pending</span></h4>
				<?php else: ?>
					<h4><span class="label label-success">Approved</span></h4>
					
				<?php endif ?>
			</td>
			<td>
				<a href="index.php?halaman=detail_laporan&id_laporan=<?php echo $value['id_laporan']; ?>" class="btn btn-info">Detail</a>
			</td>
		</tr>
		<?php endforeach ?>

	</tbody>
</table>