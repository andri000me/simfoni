<?php 

session_start();

$database = new mysqli("localhost", "root", "kebersamaan", "simfoni");



class admin
{

	public $koneksi;
	function _construct($database)
	{
		$this->koneksi = $database;
	}

	function ambil_admin($id_admin)
	{
		$ambil = $this->koneksi->query("SELECT * FROM admin WHERE id_admin='$id_admin'");
		$data_array = $ambil->fetch_assoc(); 
		
		return $data_array;
	}


	function login($username, $password)
	{
		//enskripsi password admin
		$pass_enkripsi = sha1($password);

		//ambil data admin berdasarkan inputan username dan password
		$ambil = $this->koneksi->query("SELECT * FROM admin WHERE username_admin='$username' AND password_admin='$pass_enkripsi' ");


		//menghitung data yang cocok
		$hitung = $ambil->num_rows;

		//jika ada data yang cocok
		if ($hitung > 0)
		{
			//mengubah data ke bentuk array
			$data_admin = $ambil->fetch_assoc();

			//membuat session admin
			$_SESSION['admin'] = $data_admin;
			return "admin";
		} else 
		{
			return 'gagal';
		}
	}
}

$admin = new admin($mysqli);


class user
{
	public $koneksi;
	function __construct($database)
	{
		$this->koneksi = $database;
	}

	function login($username, $password)
	{
		// enskripsi password admin
		$pass_enkripsi = sha1($password);
		// mengambil data admin berdasarkan inputan username dan password
		$ambil = $this->koneksi->query("SELECT * FROM user JOIN level ON user.id_level = level.id_level WHERE username_user='$username' AND password_user='$pass_enkripsi' ");

		// menghitung data yang cocok
		$hitung = $ambil->num_rows;

		// jika ada data yang cocok
		if ($hitung > 0)
		{
			// mengubah data ke bentuk array
			$data_user = $ambil->fetch_assoc();

			// membuat session admin
			$_SESSION['user'] = $data_user;
			return "user";

		} else {
			return "gagal";
		}
	}

	
}

$user = new user($database);

class project
{
	
	public $koneksi;
	function __construct($mysqli)
	{
		$this->koneksi = $mysqli;
	}


	function tampil_project()
	{
		$ambil_project = $this->koneksi->query("SELECT * FROM project");


		while ($array_data = $ambil_project->fetch_assoc())
		{
			$semua_data[] = $array_data;
		}
		return $semua_data;
	}

}

$project = new project($mysqli);


// echo "<pre>";
// 	print_r($project->tampil_project());
// echo "</pre>";

?>