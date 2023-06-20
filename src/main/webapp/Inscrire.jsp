<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>
	
    <form action="MonServlet" method="post">
    <h1 style="text-align: center">Inscription</h1>
    	<label for="nom">Nom: </label>
         <input type="text" name="nom" id="nom" placeholder="Nom" required><br><br>
         <label for="prenom">Prenom: </label>
         <input type="text" name="prenom" id="prenom" placeholder="Prenom" required><br><br>
         <label for="pseudo" >Pseudo: </label>
         <input type="text" name="pseudo" id="pseudo" placeholder="Pseudo" required><br><br>
          <label for="email">Email: </label>
         <input type="email" name="email" id="email" placeholder="email" required><br><br>
         <label for="pass">Mots_de_passe: </label>
         <input type="password" name="pass" id="pass" placeholder="mots de passe" required><br><br>
        <label for="confpass">confime_mots_de_passe: </label>
         <input type="password" name="confpass" id="confpass" placeholder="confirme le mot de passe" required><br><br>
       
        <input type="submit" value="S'inscrire">
        
	</form>
</body>
</html>