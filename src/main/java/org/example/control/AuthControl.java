package org.example.control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.example.model.UsuarioDTO;
import org.example.model.dao.LoginDAO;
import org.example.model.dao.UsuarioDAO;

/**
 *
 * @author Carlos
 */
public class AuthControl extends HttpServlet {

    private LoginDAO oLogin = new LoginDAO();
    private UsuarioDAO oUsuarioDAO = new UsuarioDAO();
    private final String PagMenu = "main.jsp";
    private final String PagLogin = "index.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion");
        switch (accion) {
            case "login":
                Login(request, response);
                break;
            case "logout":
                Logout(request, response);
                break;
            case "cambiarContrasenia":
                CambiarContrasenia(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }

    protected void Login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String usuario = request.getParameter("usuario");
        String contrasenia = request.getParameter("contrasenia");
        UsuarioDTO oUser = oLogin.Login(usuario, contrasenia);

        if (oUser != null) {
            request.getSession().setAttribute("user", oUser);
            response.sendRedirect(PagMenu);
        } else {
            request.getSession().setAttribute("error", "Correo y/o contraseña incorrectos");
            response.sendRedirect(PagLogin);
        }
    }

    protected void Logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String referer = request.getHeader("Referer");

        request.getSession().removeAttribute("user");
        response.sendRedirect(PagLogin);
    }

    protected void CambiarContrasenia(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Obtener los parámetros del formulario
        String usuario = request.getParameter("usuario");
        String nuevaContrasenia = request.getParameter("contrasenia");

        // Llamar al método para actualizar la contraseña
        int result = oUsuarioDAO.editar(usuario, nuevaContrasenia);

        // Verificar si la actualización fue exitosa
        if (result > 0) {
            request.getSession().setAttribute("success", "Contraseña actualizada correctamente");
            response.sendRedirect("main.jsp"); // Redirigir a una página de confirmación
        } else {
            request.getSession().setAttribute("error", "Error al actualizar la contraseña");
            response.sendRedirect("main.jsp"); // Redirigir a una página de confirmación
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
