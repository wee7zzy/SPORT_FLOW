package controller;

import dao.utilisateurDAO;
import model.utilisateurs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/inscriptionServlet")
public class inscriptionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        if (nom.isEmpty() || email.isEmpty() || password.isEmpty() || role.isEmpty()) {
            resp.sendRedirect("inscription.jsp?error=Veuillez remplir tous les champs");
            return;
        }

        utilisateurs user = new utilisateurs(0, nom, email, password, role);
        utilisateurDAO userDao = new utilisateurDAO();

        if (userDao.ajoutUser(user)) {
            HttpSession session = req.getSession();
            session.setAttribute("name", nom);
            session.setAttribute("role", role);
            resp.sendRedirect(role.equals("client") ? "dashbordClient.jsp" : "dashbordCoach.jsp");
        } else {
            resp.sendRedirect("inscription.jsp?error=Email déjà utilisé ou erreur d'inscription");
        }
    }
}