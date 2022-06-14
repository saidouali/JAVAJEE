<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page d'ajout</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h2> Ajout d'un incident </h2>
<form method="post" action="">

<table>

	<tr> 
    <td> Nom</td>
	<td> <input type="text" name="nom" value = '<%=(leDon!=null)?leDon.getNom():""%>' >
	</td>
	</tr>
	<tr> 
	<td>Prenom </td>
	<td> <input type="text" name="prenom" value = '<%=(leDon!=null)?leDon.getPrenom():""%>' >
	</td>
	</tr>
    <tr>  
	<td> Designation</td>
	<td> <input type="text" name="designation" 	value = '<%=(leDon!=null)?leDon.getDesignation():""%>' >
	</td>
	</tr>
	<tr> 
	<td>Montant </td>
	<td> <input type="text" name="montant" value = '<%=(leDon!=null)?leDon.getMontant():""%>' >
	</td>
	</tr>
	<tr>

	<%=(leDon!=null)?"<input type='hidden' name='iddon' "
	
	+ " value = '"+leDon.getIdincident()+"' > " : ""%> 
	
	<td> <input type ="reset" name="Annuler" value="Annuler"> </td>
	
	<td> <input type ="submit" 
	
  <%=(leDon!=null)? "name='Modifier' value='Modifier' ":" name='Valider' value='Valider' " %> >
   
	</td>
	</tr>
</table>
</form>
</body>
</html>






