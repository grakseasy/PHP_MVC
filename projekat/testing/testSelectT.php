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
//$tel = $dao->getAllTelefoni();
$t = $dao->getTelefonById(2);
//foreach ($tel as $t) 
    echo $t['id']." ".$t['naziv']." ".$t['cena']." ".$t['id_proizvodjaca']." ".$t['naziv']."<br>";
?>
</body>
</html>