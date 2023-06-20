<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>

    <form action="ConnexionServlet" method="post">
     <h1 style="text-align: center">Connexion</h1>
        <label for="pseudo">Nom: </label>
         <input type="text" name="pseudo" required><br>
        <label for="pass">Mot de passe: </label>
         <input type="password" name="pass" required><br>
         <a href="Acceuil.jsp" class="button">Connexion</a>
        

    </form>
</body>
</html>