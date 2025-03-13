package controller;

import dao.utilisateurDAO;
import model.utilisateurs;
import utils.DBcnx;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/connecterServlet")
public class connecterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        utilisateurDAO userDao = new utilisateurDAO();
        utilisateurs user = userDao.connecter(email, password);

        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("name", user.getNom());
            session.setAttribute("role", user.getRole());
            resp.sendRedirect(user.getRole().equals("entraineur") ? "dashbordCoach.jsp" : "dashbordClient.jsp");
        } else {
            resp.sendRedirect("connexion.jsp?error=Email ou mot de passe incorrect");
        }
    }
}