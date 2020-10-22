<?php 
	include 'config/class.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>Sistem Informasi Pendataan sekolah</title>
	<link rel="stylesheet"  href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/login.css">
</head>
<body>
	<div class="container" style="padding-top: 200px">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Login</h3>
					</div>
					<div class="panel-body">
						<form method="POST">
							<div class="form-group">
								<label>Username</label>
								<input type="text" name="username" class="form-control">
							</div>
							<div class="form-group">
								<label>Password</label>
								<input type="password" name="password" class="form-control">
							</div>
							<input type="submit" name="login" value="Login">
						</form>

							<?php 
								if (isset($_POST['login']))
								{
									$cek = $admin->login($_POST['username'], $_POST['password']);
									if ($cek=='admin') 
									{
										echo "<script>location='admin/index.php'<?script>";

									}
									else
									{
										$cek_user->$user->login($_POST['username'], $_POST['password']);
										if ($cek_user=='user') 
										{
											$level_user = $_SESSION['user']['level_user'];
											echo "<script>location='user/$level_user/index.php'</script>";
										}
										else
										{
											echo "<script>alert('Login gagal')</script>";
											echo "<script>location='index.php'</script>";
										}
									}
								}
								?>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>