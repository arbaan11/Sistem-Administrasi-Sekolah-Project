<!DOCTYPE html>
<html>
<head>
	<title>Halaman Login | Sistem Administrasi Sekolah</title>
</head>
<body>
	<center>
	<h3>Silahkan Login </h3>
	<hr/>
	<form method="post" action="">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login"/></td>
			</tr>
		</table>
	</form>
	<p>*note:</p>
	<p>username dan password diisi dengan > admin </p>
<?php
	if($_SERVER['REQUEST_METHOD']=='POST'){
		//variabel untuk menyimpan kiriman dari form
		$user = $_POST['username'];
		$pass = $_POST['password'];

		if($user=='' || $pass==''){
			echo "Form belum lengkap!";
		}else{
			include "koneksi.php";	
			$sqlLogin = mysqli_query($konek, "SELECT * FROM admin WHERE username='$user' AND password='$pass'");
			$jml = mysqli_num_rows($sqlLogin);
			$d=mysqli_fetch_array($sqlLogin);
			if($jml > 0){
				session_start();
				$_SESSION['login']		= true;
				$_SESSION['id']			= $d['idadmin'];
				$_SESSION['username']	= $d['username'];

				header('location:./index.php');
			}else{
				echo "Username dan Password anda salah!";
			}
		}

	}
	?>
	</center>
</body>
</html>
