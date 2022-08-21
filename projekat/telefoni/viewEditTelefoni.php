<?php 
require_once '../telefoni/DAOTelefoni.php';
$dao = new DAOTelefoni();
$tel = $dao->getTelefonById($id);
$msg = isset($msg)? $msg : "";
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Edit telefoni</h1>
<?php echo $msg;?><br><br>
<form action="../telefoni/" method="post">
ID:<br><input type="hidden" name="id" value="<?php echo $tel['id'];?>"><?php echo $id;?><br><br>
Naziv:<br> <?php echo $tel['naziv'];?><br><br>
Cena:<br><input type="text" name="cena" placeholder="cena" value="<?php echo $tel['cena'];?>"><br><br>
ID proizvodjaca: <br> <?php echo $tel['id_proizvodjaca'];?><br><br>
Naziv proizvodjaca: <br> <?php echo $tel['naziv'];?><br><br>
<input type="submit" name="action" value="Save">
</form>
</body>
</html>