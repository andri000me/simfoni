<?php  
$id_user = $_SESSION['user']['id_user'];
$data_user = $user->ambil_user($id_user);

$level_user = $data_user['nama_level'];

?>

<!-- <pre><?php //print_r($data_user) ?></pre> -->

<div class="row">
	<div class="col-md-6">
		<div class="kotak-profil">
	<div class="img-profil">
		<img src="../../assets/img/user/<?php echo $data_user['foto_user'] ?>" class="img-circle img-responsive">
	</div>
	<div class="data-profil">
		<table class="table">
			<tr>
				<td>Nama</td>
				<td>: <?php echo $data_user['nama_user'] ?></td>
			</tr>
			<tr>
				<td>NIP</td>
				<td>: <?php echo $data_user['nip_user']  ?></td>
			</tr>
			<tr>
				<td>Level User</td>
				<td>: <?php echo $data_user['level_ditampilkan'] ?></td>
			</tr>
		</table>
		<button  type="button"  data-toggle="modal" data-target="#myModal" class="btn btn-success  hidden-print"  >Ubah Foto</button>
	</div>
</div>

	</div>
	<div class="col-md-6">
		<div class="kotak-profil">
			<div class="text-center" style="margin-bottom: 30px">
				<h4>File Tanda Tangan</h4>
			</div>
	<div class="img-profil">

		<?php if (empty($data_user['tanda_tangan'])): ?>
			<h5 style="color: red"><b>
				<i>
					<i class="fa fa-warning"></i>Upload File Scan Tanda Tangan Anda
				</i></b></h5>
			
		<?php else: ?>
		<img src="../../assets/img/tanda_tangan/<?php echo $data_user['tanda_tangan'] ?>" class=" img-responsive">
			
		<?php endif ?>




	</div>
	<button  type="button"  data-toggle="modal" data-target="#myModal-tanda-tangan" class="btn btn-success  hidden-print"  >Upload file scan</button>
</div>

	</div>
</div>

<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<form method="post" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Upload File Foto Profil</h4>
				</div>
				<div class="modal-body">
					<input type="file" name="foto_user" class="form-control" required="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button  class="btn btn-primary" name="ubah" onclick="return confirm('Ubah Foto Profil Anda?')">Ubah</button>
				</div>
			</div>
		</form>
		<?php 
			

			if (isset($_POST['ubah']) AND $level_user == "staf") 
		{
			
			$user->ubah_foto($_FILES['foto_user'], $id_user);
			
		} 

		?>
	</div>
</div>




<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="myModal-tanda-tangan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<form method="post" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Upload File Scan Tanda Tangan</h4>
				</div>
				<div class="modal-body">
					<input type="file" name="tanda_tangan" class="form-control" required="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button  class="btn btn-primary" name="upload" onclick="return confirm('Ubah Foto Profil Anda?')">Upload</button>
				</div>
			</div>
		</form>
		<?php 
			

			if (isset($_POST['upload']) AND $level_user == "staf") 
		{
			
			$user->upload_tanda_tangan($_FILES['tanda_tangan'], $id_user);
			
		} 

		?>
	</div>
</div>




