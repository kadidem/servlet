package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;


@WebServlet("/AcceuilServlet")
public class AcceuilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Utilisateur> liste = new ArrayList<>();
       
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        request.setAttribute("utilisateurs", liste);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Accueil.jsp");
	        dispatcher.forward(request, response);
	    }
	}

