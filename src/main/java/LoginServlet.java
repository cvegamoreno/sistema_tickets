
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String action = request.getParameter("action");

        // Aquí puedes implementar la lógica de autenticación
        if ("login".equals(action) && "admin".equals(username) && "password".equals(password)) {
            response.sendRedirect("menu.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
