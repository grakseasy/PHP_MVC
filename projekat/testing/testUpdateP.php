<?php
require_once '../proizvodjaci/DAOProizvodjaci.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<?php 
$dao = new DAOProizvodjaci();
$dao->updateProizvodjac("Samsung Group", 2);

?>
</body>
</html>