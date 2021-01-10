<?php
session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<div class="well">


				<form method="post" action="verif.php">
					<h1><center>Connexion ESSAT</center></h1>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="text" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="pass" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>

</form>
				
			</div>
			<?php

			if(isset($_SESSION["erreur"])){

				echo "<div class='alert alert-{$_SESSION["type_erreur"]}'>";
				echo $_SESSION["erreur"];
				echo "</div>";
				unset($_SESSION["erreur"]);
				unset($_SESSION["user"]);
			}
			?>
		</div>
	</div>

</body>
</html>
