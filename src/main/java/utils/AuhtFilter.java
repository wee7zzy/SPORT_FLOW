package utils;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter({"/dashbordClient.jsp" ,"/dashbordCoach.jsp"}) // Intercepte toutes les requêtes sous "/dashboard/"

public class AuhtFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("name") == null) {
            res.sendRedirect(req.getContextPath() + "/connexion.jsp?error=Veuillez vous connecter !");
            return;
        }else {
            chain.doFilter(request, response);
        }


    }
}
