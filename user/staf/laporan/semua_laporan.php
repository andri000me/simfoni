<h1>Data Semua Laporan</h1>
<hr>
<?php 
$semua_laporan = $laporan->tampil_semua_laporan();
?>

<table class="table table-bordered" id="data-table">
	<thead>
		<tr>
			<th>No</th>
			<th>No Cek</th>
			<th>Lokasi</th>
			<th>Periode</th>
			<th>Data Proposal</th>
			<th>Tambah Proposal</th>
			<th>Detail</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($semua_laporan as $key => $value): ?>
			<?php 
				$cek_proposal = $laporan->tampil_proposal_laporan($value['id_laporan'])
			?>
		<tr>
			<td><?php echo $key+1 ?></td>
			<td><?php echo $value['no_cek'] ?></td>
			<td><?php echo $value['nama_lokasi'] ?></td>
			<td><?php echo $value['nama_bulan'] ?> <?php echo $value['tahun_periode'] ?></td>
			<td>				
				<?php if (empty($cek_proposal)): ?>
					<h5 style="color: red">Tidak Ada data Proposal</h5>
				<?php else: ?>


	 <ul>
					<?php foreach ($cek_proposal as $key_prop => $value_prop): ?>
						<li>
							<a title= "Lihat uraian proposal" href="index.php?halaman=uraian_proposal&id_proposal=<?php echo $value_prop['id_proposal'] ?>"><?php echo $value_prop['nama_proposal'] ?></a>
						</li>
					<?php endforeach ?>
					</ul>
	
					

					
						
						
				<?php endif ?>
				
			</td>
			<td>
				<a href="index.php?halaman=tambah_proposal&id_laporan=<?php echo $value['id_laporan'] ?>" class="btn btn-primary btn-xs">Tambah Proposal</a>
			</td>
			<td>
				<a href="index.php?halaman=detail_laporan&id_laporan=<?php echo $value['id_laporan'] ?>" " class="btn btn-warning btn-xs">Detail Laporan</a>
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>