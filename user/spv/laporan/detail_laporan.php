<?php 
$id_laporan = $_GET['id_laporan'];

$data_laporan = $laporan->ambil_detail_laporan($id_laporan);

$prop_laporan = $laporan->tampil_proposal_laporan($id_laporan);

$persetujuan_askom = $laporan->tampil_persetujuan_laporan_askom($id_laporan);
$persetujuan_direktur = $laporan->tampil_persetujuan_laporan_direktur($id_laporan);
$persetujuan_ka_tu = $laporan->tampil_persetujuan_laporan_ka_tu($id_laporan);
$persetujuan_staf = $laporan->tampil_persetujuan_laporan_staf($id_laporan);
$persetujuan_spv = $laporan->tampil_persetujuan_laporan_spv($id_laporan);


if (!empty($prop_laporan)) 
{
	// mengumpilkan id_proposal ke dlm array

foreach ($prop_laporan as $key => $value) 
{
	$id_proposal[] = $value['id_proposal'];
}




foreach ($id_proposal as $key => $value) 
{
	$uraian_proposal[] = $proposal->ambil_uraian_proposal($value);
}

foreach ($uraian_proposal as $key => $value) 
{
	$detail_uraian[] = $value;
	// $saldo_proposal = $value[0]['saldo'];
}

$cek_proposal_kosong= array();

foreach ($detail_uraian as $key => $value) 
{
	if (empty($value))
	{
		$cek_proposal_kosong[]='kosong';
	}
}

}


$id_user = $_SESSION['user']['id_user'];
$data_user= $user->ambil_user($id_user);
$tanda_tangan_user = $data_user['tanda_tangan'];


?>


<table class="table table-bordered" >
	<tr>
		<tr >
			<td colspan="4">
				<div class="col-md-4 col-sm-4 col-xs-4 gambar-laporan">
					<img src="../../assets/img/sukma.jpg" class="img-responsive" width="80px;">
				</div>
				<div class="col-md-6 col-sm-8 col-xs-8 text-center">
					<h4><b>LAPORAN</b></h4>
					<h4><b>PERTANGGUNG JAWABAN</b></h4>
					<h4><b>DANA ADVANCE</b></h4>
					<h5><b>Sekolah Sukma Bangsa <?php echo $data_laporan['nama_lokasi'] ?></b></h5>
					<h5><b>Cek No <?php echo $data_laporan['no_cek'] ?></b></h5>
				</div>
			</td>
			<td colspan="3">
				<div class="row">
					<div class="col-md-6 col-sm-4 col-xs-4 info-detail">
						Tanggal 
						<br>
						Periode 
						<br>
						Lokasi 
						<br>
						LPJ 
					</div>
					<div class="col-md-6 col-sm-8 col-xs-8 data-detail">
						: <?php echo tanggal_indo($data_laporan['tgl_laporan']) ?>
						<br>
						: <?php echo $data_laporan['nama_bulan'] ?> <?php echo $data_laporan['tahun_periode'] ?>
						<br>
						: <?php echo $data_laporan['nama_lokasi'] ?>
						<br>
						: <?php echo tanggal_indo($data_laporan['tgl_lpj']) ?>
					</div>
				</div>
			</td>
		</tr>
	</tr>
	<tr>
		
		<tr class="judul-table">
			<th>No</th>
			<th>Pengeluaran</th>
			<th class="tgl-thead">Tanggal</th>
			<th class="uraian-thead">Uraian</th>
			<th>Debet</th>
			<th>Kredit</th>
			<th>Saldo</th>
		</tr>
	</tr >
	<tbody >
		<?php if (!empty($prop_laporan) AND !in_array('kosong', $cek_proposal_kosong)): ?>
			
		<?php 
		$no=1;
		$total_debet = 0;
		$total_kredit = 0;
		$total_saldo = 0;

		?>
		<?php foreach ($detail_uraian as $key => $value): ?>
			<tr>
				<td class="no-table">
					<?php// if($key==0){echo $no;} ?>
					<?php echo $key+1 ?>
				</td>
				<td><?php echo $value[0]['nama_proposal'] ?></td>
				<td class="tgl-table"><?php echo tanggal_indo($value[0]['tgl_proposal']) ?></td>
				<td></td>
				<td class="uang"><?php echo format_angka($value['0']['debet']) ?></td>
				<td></td>
				<td class="uang"><?php echo format_angka($value['0']['saldo']) ?></td>
			</tr>
			<?php 
			$no++;
			$total_debet += $value['0']['debet'];
			$total_saldo += $value['0']['saldo'];

			$saldo_uraian = $value['0']['saldo'];

			?>

			<?php foreach ($value as $key_detail => $value_detail): ?>

				<?php 
				$saldo_uraian -= $value_detail['kredit'] ;
				?>

				<tr>
					<!-- <td><?php //echo $key_detail+1 ?></td> -->
					<td >

					</td>
					<td></td>
					<td class="tgl-table"><?php echo tanggal_indo($value_detail['tgl_uraian']) ?></td>

					<td><?php echo $value_detail['nama_uraian'] ?></td>
					<td></td>
					<td class="uang"><?php echo format_angka($value_detail['kredit']) ?></td>
					<td class="uang"><?php echo format_angka($saldo_uraian) ?></td>
				</tr>

				<?php $total_kredit += $value_detail['kredit'] ?>
			<?php endforeach ?>

			<tr style="height: 30px;">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>

			</tr>
		<?php endforeach ?>

		<tr>
			<td colspan="4" class="text-center" >Total</td>
			<td class="uang"><?php echo format_angka($total_debet) ?></td>
			<td class="uang"><?php echo format_angka($total_kredit) ?></td>
			<td class="uang"><?php echo  format_angka($total_debet - $total_kredit); ?></td>
		</tr>

		<tr>
			<td colspan="7"></td>
		</tr>

		<tr>
			<td colspan="7">
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-2 font-print">Diketahui Oleh,</div>
					<div class="col-md-3 col-sm-3 col-xs-3 font-print">Dipertanggungjawabkan Oleh,</div>
					<div class="col-md-2 col-sm-2 col-xs-2 font-print">Disetujui Oleh,</div>
					<div class="col-md-2 col-sm-2 col-xs-2 font-print">Diperiksa Oleh,</div>
					<div class="col-md-3 col-sm-3 col-xs-2 font-print">Disiapkan Oleh</div>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="7">
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-2 font-print">
						<?php if (empty($persetujuan_direktur)): ?>
							<h5 style="color: red" class="hidden-print">Belum Approve</h5>
							<?php if ($_SESSION['user']['nama_level']== 'direktur'): ?>
								<button  type="button"  data-toggle="modal" data-target="#myModal" class="btn btn-success btn-xs hidden-print"  >Approve</button>
							<?php endif ?>
						<?php else: ?>

							<img src="../../assets/img/tanda_tangan/<?php echo $persetujuan_direktur['file_scan'] ?>" class="img-responsive" style="height: 80px; width: 120px; ">
							<br>
							<?php echo $persetujuan_direktur['nama_user'] ?>
						<?php endif ?>
					</div>


					<div class="col-md-3 col-sm-3 col-xs-3 font-print">
						<?php if (empty($persetujuan_askom)): ?>
							<h5 style="color: red" class="hidden-print">Belum Approve</h5>
							<?php if ($_SESSION['user']['nama_level']== 'askom'): ?>
								<button  type="button"  data-toggle="modal" data-target="#myModal" class="btn btn-success btn-xs hidden-print"  >Approve</button>
							<?php endif ?>
						<?php else: ?>

							<img src="../../assets/img/tanda_tangan/<?php echo $persetujuan_askom['file_scan'] ?>" class="img-responsive" style="height: 80px; width: 120px;">
						<br>
						<?php echo $persetujuan_askom['nama_user'] ?>
						<?php endif ?>
					</div>


					<div class="col-md-2 col-sm-2 col-xs-2 font-print">

						<?php if (empty($persetujuan_spv)): ?>
							<?php if ($_SESSION['user']['nama_level']== 'spv' AND !empty($tanda_tangan_user)): ?>
							
								<button  type="button"  data-toggle="modal" data-target="#myModal" class="btn btn-success btn-xs hidden-print"  >Approve</button>
							<?php endif ?>


							<?php if (empty($tanda_tangan_user)): ?>
								<a href="index.php">
								<h6 style="color: red">
									<i class="fa fa-warning"></i> Upload File Scan Tanda Tangan
								</h6> </a>
							<?php endif ?>


							
						<?php else: ?>

							<img src="../../assets/img/tanda_tangan/<?php echo $persetujuan_spv['file_scan'] ?>" class="img-responsive" style="height: 80px; width: 120px;">
						<br>
						<?php echo $persetujuan_spv['nama_user'] ?>
						<?php endif ?>
					</div>

					<div class="col-md-2 col-sm-2 col-xs-2 font-print">
						<?php if (empty($persetujuan_ka_tu)): ?>
							<h5 style="color: red" class="hidden-print">Belum Approve</h5>
							<?php if ($_SESSION['user']['nama_level']== 'ka_tu'): ?>
								<button  type="button"  data-toggle="modal" data-target="#myModal" class="btn btn-success btn-xs hidden-print"  >Approve</button>
							<?php endif ?>
						<?php else: ?>
							<img src="../../assets/img/tanda_tangan/<?php echo $persetujuan_ka_tu['file_scan'] ?>" class="img-responsive" style="height: 80px; width: 120px; ">
						<br>
						<?php echo $persetujuan_ka_tu['nama_user'] ?>
						<?php endif ?>
					</div>

					<div class="col-md-3 col-sm-3 col-xs-2 font-print">
						
						<?php if (empty($persetujuan_staf)): ?>
							
							<?php if ($_SESSION['user']['nama_level']== 'staf'): ?>
								<br>
								<button  type="button"  data-toggle="modal" data-target="#myModal" class="btn btn-success btn-xs hidden-print"  >Approve</button>
							<?php endif ?>
							<br>
							
						<?php else: ?>
							<img src="../../assets/img/tanda_tangan/<?php echo $persetujuan_staf['file_scan'] ?>" class="img-responsive" style="height: 80px; width: 120px; ">

						<br>
						<?php echo $persetujuan_staf['nama_user'] ?>
						<?php endif ?>

					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="7">
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-2 font-print">Direktur Sekolah</div>
					<div class="col-md-3 col-sm-3 col-xs-3 font-print">Ass. Menkom</div>
					<div class="col-md-2 col-sm-2 col-xs-2 font-print">Finc. Controller</div>
					<div class="col-md-2 col-sm-2 col-xs-2 font-print">Ka Tata Usaha</div>
					<div class="col-md-3 col-sm-3 col-xs-2 font-print">Staf Keuangan</div>
				</div>
			</td>
		</tr>

	
		<?php else: ?>
			<tr>
				<td colspan="7">
					<h5 style="color: red" class="text-center">Data Proposal Belum Lengkap</h5>
				</td>
			</tr>
		<?php endif ?>
	</tbody>
</table>


<div class="text-right">
<a href="" onclick="print()" class="btn btn-success hidden-print"><i class="fa fa-print"></i> Cetak Laporan</a>
</div>


<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<form method="post" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					
				</div>
				<div class="modal-body text-center">
					<h4>Approve Laporan</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button  class="btn btn-primary" name="approve" >Approve</button>
				</div>
			</div>
		</form>
		<?php 
			$nama_user = $_SESSION['user']['nama_user'];
			$level_user = $_SESSION['user']['nama_level'];

			if (isset($_POST['approve']) AND $level_user == "spv") 
		{
			
			$laporan->approve_laporan($id_laporan , $nama_user , $level_user);
			echo "<script>laporan diapprove</script>";
			echo "<script>location='index.php?halaman=detail_laporan&id_laporan=$id_laporan'</script>";
		} 

		?>
	</div>
</div>

