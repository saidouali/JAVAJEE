<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Page de la liste des incidents </title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Liste des incidents </h2>
<table id="don" border="1">
    <tr>
        <td>id Incident</td> <td>Nom</td>
        <td>Prenom</td>  <td>Designation</td>
        <td>Montant</td> <td>Interventions </td>
    </tr>
    <% 
    for (Don unDon : lesDons)
    {
        out.print ("<tr><td>"+unDon.getIdincident() +"</td>"
            +"<td>"+unDon.getNom() +"</td>"
            +"<td>"+unDon.getPrenom() +"</td>"
            +"<td>"+unDon.getDesignation() +"</td>"
            +"<td>"+unDon.getMontant() +"</td>"
            +"<td><a href='index.jsp?action=sup&idIncident="+ unDon.getIdincident() +"'>Supprimer </a>"
            +"| <a href='index.jsp?action=edit&idIncident="+ unDon.getIdincident() +"'>Editer</a></td>"		
            + "</tr>");
}
%>
</table>
</body>
</html>
