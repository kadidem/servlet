package web;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MonServlet")
public class MonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Utilisateur> liste = new ArrayList<Utilisateur>();

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom= request.getParameter("nom");
		request.setAttribute("nom", nom);
		String prenom= request.getParameter("prenom");
		request.setAttribute("prenom", prenom);
		String pseudo= request.getParameter("pseudo");
		request.setAttribute("pseudo", pseudo);
		String email= request.getParameter("email");
		request.setAttribute("email", email);
		String pass= request.getParameter("pass");
		request.setAttribute("pass",pass);
		String confpass= request.getParameter("confpass");
		request.setAttribute("confpass",confpass);
		//condition de verification du mot de passe
		if (!pass.equals(confpass)) {
            response.sendRedirect("Inscrire.jsp");
            return;
        } 
		
		else {
            Utilisateur i = new Utilisateur(nom, prenom, pseudo, email, pass);
            liste.add(i);
            request.setAttribute("list", liste);
            //response.sendRedirect("Acceuil.jsp");
            request.getRequestDispatcher("Acceuil.jsp").forward(request, response);

            }
	}
	//protected void doGet(HttpServletRequest requette,HttpServletResponse reponse)throws SecurityException

}
