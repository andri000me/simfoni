<div class="row">
	<div class="col-md-6">
		<h3>Data Lulusan SMA</h3>
		<h3>Sekolah Sukma Bangsa Bireuen</h3>
	</div>
	<div class="col-md-6">
		<div class="tambah-user" >
		<a href="index.php?halaman=tambah_lulusan" class="btn btn-primary hidden-print" >Tambah</a>
			
		</div>
	</div>


</div>
<hr>

<?php 
	// $user adalah objek user dari class.php
	// tampil_user adalah fungsi pada class user dari class.php
	// objek user menjalankan fungsi tampil user
	$data_lulusan = $lulusan->tampil_lulusan_admin();
	/*$data_jenjang = $jenjang->tampil_jenjang_admin();
	$data_kelas = $kelas->tampil_kelas_admin();*/
// 	echo "<pre>";
// print_r($data_pengguna);
// echo "</pre>";
?>
<!-- melihat isi array data user -->
<!-- <pre><?php //print_r($data_user); ?></pre>  -->

<table class="table table-hover table-striped" id="data-table" >
	<thead>
		<tr>
			<th>No</th>			
			<th>Tahun Pelajaran</th>
			<th>Nama Siswa</th>	
			<th>Jenis Kelamin</th>				
			<th>Jurusan</th>
			<th>Universitas</th>	
			<th>Status</th>	
			<th>Jalur Masuk</th>	
			<th>Program Studi</th>
			<th>Keterangan</th>
			<th class="hidden-print">Opsi</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_lulusan as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_tp']; ?></td>
			<td><?php echo $value['nama_siswa']; ?></td>
			<td><?php echo $value['nama_jk']; ?></td>
			<td><?php echo $value['nama_jurusan']; ?></td>
			<td><?php echo $value['nama_kampus']; ?></td>
			<td><?php echo $value['nama_statuspt']; ?></td>
			<td><?php echo $value['jalur_kampus']; ?></td>
			<td><?php echo $value['jurusan_kampus']; ?></td>
			<td><?php echo $value['ket_lulus']; ?></td>
			
			
			
			<td class="hidden-print"> 
				<a href="index.php?halaman=edit_lulusan&id_lulusan=<?php echo $value['id_lulusan']; ?>" class="" ><div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div></a> <br> <br>
				<a href="index.php?halaman=hapus_lulusan&id_lulusan=<?php echo $value['id_lulusan']; ?>" class="" onclick="return confirm('hapus data lulusan <?php echo $value["nama_siswa"]; ?>') " ><div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div></a> 
				
						
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>
<div class="text-right">
<a href="" onclick="print()" class="btn btn-success hidden-print"><i class="fa fa-print"></i> Cetak</a>
</div>
</div>
