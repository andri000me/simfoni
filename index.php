<?php include 'config/class.php'; ?>

<!DOCTYPE html>
<html>
<head>
<!--	<meta charset="UTF-8">
<meta http-equiv="refresh" content="0; url=http://www.detik.com">
<script type="text/javascript">
window.location.href = "http://www.detik.com"
</script> -->
	<title>SIMFONI</title>
	<link rel="icon" href="ssb.png" type="image/png">
	<link rel="stylesheet" type="text/css" href="assets/css/login_admin.css">
	
</head>
<body>
</body>
<br/>
<br/>
<p></p>
<p></p>
<h1 align="center">SIMFONI</h1>
<h1 align="center">SISTEM INFORMASI MANAJEMEN FORM ONLINE</h1>
<h1 align="center">SEKOLAH SUKMA BANGSA <?php echo strtoupper ($db_lokasi)?>	</h1>

<div class="kotak_login">
	<img src="logo.png" class="gambar" align="middle">
	<p class="tulisan_login">Silakan Login</p>
	<br/>
	<form method="POST">
		<!--<label>Username</label>-->

		<input type="text" name="username" class="form_login" placeholder="Username" required="">
		<!--<label>Password</label>-->

		<input type="password" name="password" class="form_login" placeholder="Password" required="">

		<input type="submit" class="tombol_login" value="LOGIN" name="login">

		<br/>
		<br/>
	</form>


	<?php 
	if (isset($_POST['login']))
	{
		$cek = $admin->login($_POST['username'], $_POST['password']);
		$cek2 = $manajemen->login_manajemen($_POST['username'], $_POST['password']);
		$cek3 = $konselor->login_konselor($_POST['username'], $_POST['password']);
		$cek4 = $pjruangan->login_pjruangan($_POST['username'], $_POST['password']);
		$cek5 = $pustaka->login_pustaka($_POST['username'], $_POST['password']);
		$cek6 = $waka->login_waka($_POST['username'], $_POST['password']);
				 		// echo "$cek";

		if ($cek=='admin') 
		{
			// echo "<script>alert('login berhasil')</script>";
			echo "<script>location='admin/index.php?halaman=home'</script>";
		} 
		else 
			if ($cek2=='manajemen')  
			{
				echo "<script>location='manajemen/index.php?halaman=home'</script>";
			}
		else 
			if ($cek3=="konselor") 
			{
				echo "<script>location='konselor/index.php?halaman=home'</script>";
		}
		else
			if ($cek4=="pjruangan")
			{
				echo "<script>location='pjruangan/index.php?halaman=home'</script>";
			}
		else
			if ($cek5=="pustaka")
			{
				echo "<script>location='pustaka/index.php'</script>";
			}
		else
			if ($cek6=="waka")
			{
				echo "<script>location='waka/index.php'</script>";
			}
		else
			{
				$cek_pengguna = $pengguna->login($_POST['username'], $_POST['password']);
				if ($cek_pengguna == "pengguna") 
				{
					$level_pengguna = $_SESSION['pengguna']['nama_jenjang'];
					echo "<script>location='pengguna/$level_pengguna/index.php?halaman=home'</script>";
				} 
				else
				{
					echo "<script>alert('login gagal')</script>";
					echo "<script>location='index.php'</script>";
				}
				
			}
	}
	?>

	
</div>

</body>
</html>