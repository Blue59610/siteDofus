<?php
  include_once("session.php");
?>
<!DOCTYPE html>
<html>
  	<head>
    	<title>
    		DOFUS - SITE DE GESTION
    	</title>
    	<meta charset="UTF-8">
    	<link rel="stylesheet" type="text/css" href="style.css">
      <link rel="stylesheet" type="text/css" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    	<?php 
    		include_once("header.php");
    	?>
  	</head>
  	<body>
      		<?php
        		if(isset($_GET['param']))
        		{
          			include_once($_GET['param']);
        		}
        		else
        		{
          			include_once("home.php");
        		}
      		?>
  	</body>
  	<?php
    	include_once("Footer.php");
    ?>
</html>