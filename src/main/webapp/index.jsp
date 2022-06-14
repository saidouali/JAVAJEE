<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Controleur.*" %>
    <%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1> Gestion des incidents  </h1>
	<%
		if ((String)session.getAttribute("email") == null) {
	%>
	<%@include file="vue_connexion.jsp" %>
	<%
	}else {
		out.print("Bivenue " + session.getAttribute("nom")); 
		out.print("<form method ='post'> <input type='submit'"
		  + "name='deConnexion' value='DéConnexion'></form>"); 
	}
	
	if (request.getParameter("deConnexion")!= null)
		//si clicker sur bouton deConnexion vider tous les champs
	{
		//session.invalidate (); 
		session.removeAttribute("email");
		session.removeAttribute("role");
		session.removeAttribute("nom");
		session.removeAttribute("prenom");
		response.sendRedirect("index.jsp");
	}
	
	if (request.getParameter("SeConnecter") != null)
	{
		String email = request.getParameter("email"); 
		String mdp = request.getParameter("mdp"); 
		
		User unUser = Controleur.selectWhereUser(email,mdp); 
		if (unUser == null)
		{
			out.print("<br/> Veuillez vérifier vos identifiants");
		}else {
			//création de la session. 
			session.setAttribute ("email", unUser.getEmail());
			session.setAttribute ("role", unUser.getRole());
			session.setAttribute ("nom", unUser.getNom());
			session.setAttribute ("prenom", unUser.getPrenom());
			response.sendRedirect("index.jsp");
		}
		
	}
	
	Don leDon = null; 
	if ((String)session.getAttribute("email") != null) {
		
		if (((String)session.getAttribute("role")).equals("admin") ) {
	%>
	
	<%
		if (request.getParameter("Valider") != null)
		{
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String designation = request.getParameter("designation");  
			float montant = 0;
			try{
				montant = Float.parseFloat(request.getParameter("montant"));
			}
			catch (NumberFormatException exp)
			{
				out.print("<br/> Erreur de saisie du montant");
			}
	
			if (montant > 0){
				Don unDon = new Don (nom, prenom, designation, montant);
				Controleur.insertDon(unDon);
			}
		}
	
		if (request.getParameter("action") != null && request.getParameter("idIncident")!= null)
		{
			int idIncident = Integer.parseInt(request.getParameter("idIncident"));
			if (request.getParameter("action").equals("sup"))
			{
				Controleur.deleteDon(idIncident);
			}
			else if (request.getParameter("action").equals("edit"))
			{
				leDon = Controleur.selectWhere(idIncident);  
			}
		}
		} //fin de la session admin
	%>
	
	<%@include file="vue_insert_don.jsp" %>
	<%
	
	if (request.getParameter("Modifier") != null)
	{
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String designation = request.getParameter("designation");
		float montant = 0; 
		int idincident = 0;
		
		try{
			montant = Float.parseFloat(request.getParameter("montant"));
		}
		catch (NumberFormatException exp)
		{
			out.print("<br/> Erreur de saisie du montant");
		}
	
			if (montant > 0){
				Don unDon = new Don (nom, prenom, designation,montant);
				Controleur.insertDon(unDon);
			

	
		}
	}
	%>
	
	<% 
		ArrayList<Don> lesDons = Controleur.selectAllDons(); 
	%>
	
	<%@include file="vue_les_dons.jsp" %>
	<%
	
	 } //fin de la session 
	%>
	
	</center>
</body>
</html>