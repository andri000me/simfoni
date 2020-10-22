<?php 
	$id_semester = $_GET['id_semester'];
	$semua_guest = $guest->tampil_guest();
	$ambil_semester = $semester->ambil_semester($id_semester);
	$data_semester = $semester->tampil_semester_admin();
	$semua_guest = $guest->tampil_guest();
	$semua_mapel1 = $mapel1->tampil_mapel1();
?>

<div class="row">
	<div class="col-md-8">
<h1>Data Guest Teacher Semester <?php echo $ambil_semester['nama_semester'] ?></h1>

<hr>


<table class="table table-bordered">
			
			<thead>
				<tr>
					<th>No</th>
					<!-- <th>Jenjang</th> -->
					<th>Semester</th>
					<th>Kelas</th>
					<th>Mata Pelajaran</th>	
					<th>Materi Pelajaran</th>	
					<th>Koordinator Pelaksana Guest Teacher</th>
					<th>Nama Guest Teacher</th>
					<th>Tujuan dan Manfaat</th>
					<th>Waktu Pelaksanaan</th>
					<th>Perkiraan Biaya</th>
					<th>Laporan</th>
					<th class="hidden-print">Opsi</th>
					<!-- <th>Upload Laporan</th> -->
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_guest as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<!-- <td><?php echo $value['nama_jenjang']; ?></td> -->
			<td><?php echo $value['nama_semester']; ?></td>
			<td><?php echo $value['nama_kelas']; ?></td>
			<td><?php echo $value['nama_mapel1']; ?></td>
			<td><?php echo $value['tema_guest']; ?></td>
			<td><?php echo $value['nama_guru'] ;?>  </td>
			<td><?php echo $value['nama_guest'] ;?>  </td>
			<td><?php echo $value['hasil_guest'] ?></td>
			<td><?php echo tanggal_indo($value['waktu_1']) ?> s/d <?php echo tanggal_indo($value['waktu_2']) ?></td>
			<td><?php echo $value['biaya_guest'] ?></td>
			<td><?php echo $value['laporan'] ?></td>

			<td class="hidden-print">
				<a href="index.php?halaman=edit_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Ubah</a> <br>
				<a href="index.php?halaman=hapus_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" onclick="return confirm('hapus data tema guest teacher <?php echo $value["tema_guest"]; ?>') " >Hapus</a> <br>
				<a href="index.php?halaman=upload_laporan_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Upload Laporan</a> <br>	


				<a href="../../laporan/guest_teacher/<?php echo $value['laporan'] ?>" class="" >Download Laporan</a>	
						
			</td>

			
			<!-- <td>
				<input type="file" name="upload_file"> <br>
				<input type="submit" name="upload" value="Upload">

			</td> -->
			
		</tr>
		<?php endforeach ?>
					
			</tbody>
		</table>
			<div class="text-right">
<a href="" onclick="print()" class="btn btn-success hidden-print"><i class="fa fa-print"></i> Cetak Laporan</a>