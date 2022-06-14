<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page Connection</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<h2> Connexion au site RencontreScape </h2>

<form method="post" action="">
<table border="0">

<tr> 
		<td> Email </td>
		<td> 
			<input type="text" name ="email"> </br>
		</td>
	</tr>
	<tr>
		<td> MDP </td>
		<td> 
			<input type="password" name ="mdp"> </br>
		</td>
	</tr>
	<tr>
		<td> <input type="reset" name ="Annuler" value="Annuler"> </td>
		<td> 
			<input type="submit" name ="SeConnecter" value ="Se Connecter">
		</td>
	</tr>
	

	
</table>
</form>
</body>
</html>