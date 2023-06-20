<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="web.Utilisateur"%>
    <%@page import="web.MonServlet"%>
      <%@page import="java.util.*"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="Style.css">
<title>Acceuil</title>
</head>
<body>
 	<h1 style="text-align: center">Bienvenue <%= request.getParameter("prenom") %> <%= request.getParameter("nom") %> !</h1>
	<h2 style="text-align: center">Utilisateurs inscrits :</h2>
 	<table>

 	<tr>
 		<th>N</th>
 		<th>nom</th>
 		<th>prenom</th>
 		<th>Pseudo</th>
 		<th>Email</th>
 	</tr>

 	<c:forEach  var="Utilisateur" varStatus="statut" items="${list}">

 		<tr>
 			<td>${statut.count}</td>
 			<td>${Utilisateur.nom}</td>
 			<td>${Utilisateur.prenom}</td>
 			<td>${Utilisateur.pseudo}</td>
 			<td>${Utilisateur.email}</td>

 	</c:forEach>
   
	</table>
    <form action="Deconnexion" method="post">
        <input type="submit" value="Déconnecter">
    </form>
</body>
</html>