<?php
require_once '../telefoni/DAOTelefoni.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<?php 
$dao = new DAOTelefoni();
$dao->updateTelefon(2000, 1);

?>
</body>
</html>