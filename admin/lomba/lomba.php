<div class="row">
	<div class="col-md-6">
		<h3>Data Lomba dan Prestasi Siswa<br></h3>
		<h3>Sekolah Sukma Bangsa Bireuen</h3>
	</div>
	<div class="col-md-6">
		<div class="tambah-user" >
		<a href="index.php?halaman=tambah_lomba" class="btn btn-primary hidden-print" >Tambah</a>
			
		</div>
	</div>


</div>
<hr>

<?php 
	// $user adalah objek user dari class.php
	// tampil_user adalah fungsi pada class user dari class.php
	// objek user menjalankan fungsi tampil user
	$data_lomba = $lomba->tampil_lomba_admin();
	/*$data_jenjang = $jenjang->tampil_jenjang_admin();
	$data_kelas = $kelas->tampil_kelas_admin();*/
// 	echo "<pre>";
// print_r($data_pengguna);
// echo "</pre>";
?>
<!-- melihat isi array data user -->
<!-- <pre><?php //print_r($data_user); ?></pre>  -->

<table class="table table-bordered" id="data-table" >
	<thead>
		<tr>
			<th>No</th>			
			<th>Tahun Pelajaran</th>	
			<th>Nama Siswa</th>	
			<th>Jenis Kelamin</th>				
			<th>Jenjang</th>
			<th>Nama Lomba</th>
			<th>Lokasi</th>	
			<th>Tahun</th>
			<th>Penyelenggara</th>	
			<th>Hasil</th>
			<th class="hidden-print">Opsi</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_lomba as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_tp']; ?></td>
			<td><?php echo $value['nama_siswa']; ?></td>
			<td><?php echo $value['nama_jk']; ?></td>
			<td><?php echo $value['nama_jenjang']; ?></td>
			<td><?php echo $value['nama_lomba']; ?></td>
			<td><?php echo $value['lokasi_lomba']; ?></td>
			<td><?php echo $value['tahun_lomba']; ?></td>
			<td><?php echo $value['penyelenggara_lomba']; ?></td>
			<td><?php echo $value['hasil_lomba']; ?></td>
						
			<td class="hidden-print"> 
				<a href="index.php?halaman=edit_lomba&id_lomba=<?php echo $value['id_lomba']; ?>" class="" >Ubah Data</a> <br> <br>
				<a href="index.php?halaman=hapus_lomba&id_lomba=<?php echo $value['id_lomba']; ?>" class="" onclick="return confirm('hapus data lomba <?php echo $value["nama_siswa"]; ?>') " >Hapus Data</a> 
				
						
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>
<div class="text-right">
<a href="" onclick="print()" class="btn btn-success hidden-print"><i class="fa fa-print"></i> Cetak</a>
</div>
</div>
