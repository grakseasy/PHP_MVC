<?php 
require_once '../telefoni/DAOTelefoni.php';
$dao = new DAOTelefoni();
$telefoni = $dao->getAllTelefoni();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Telefoni</h1>
<table>
<tr>
<th>ID</th>
<th>Naziv</th>
<th>Cena</th>
<th>ID proizvodjaca</th>
<th>Naziv proizvodjaca</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<?php foreach ($telefoni as $telefon) {?>
<tr>
<td><?php echo $telefon['id'];?></td>
<td><?php echo $telefon['naziv'];?></td>
<td><?php echo $telefon['cena'];?></td>
<td><?php echo $telefon['id_proizvodjaca'];?></td>
<td><?php echo $telefon['naziv'];?></td>
<td><a href="../telefoni/?action=goedit&id=<?php echo $telefon['id'];?>">Edit</a></td>
<td><a href="../telefoni/?action=delete&id=<?php echo $telefon['id'];?>">Delete</a></td>
</tr>
<?php }?>
</table>
</body>
</html>