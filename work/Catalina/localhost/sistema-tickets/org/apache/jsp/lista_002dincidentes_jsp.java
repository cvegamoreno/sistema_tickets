/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.89
 * Generated at: 2024-07-25 15:56:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class lista_002dincidentes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("    <title>Sistema de Gestión de tickets e inventario</title>\r\n");
      out.write("    <style></style>\r\n");
      out.write("    <link\r\n");
      out.write("      href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\"\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("      integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\"\r\n");
      out.write("      crossorigin=\"anonymous\"\r\n");
      out.write("    />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/menu.css\" />\r\n");
      out.write("  </head>\r\n");
      out.write("<body  class=\"first\" style=\"background-image: url('assets/img/helpdesk-bg.webp');\">\r\n");
      out.write("    <!--Navbar-->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/navbar.jsp", out, false);
      out.write("\r\n");
      out.write("        <!--//Navbar-->\r\n");
      out.write("  <div style=\"padding: 10 357;\">\r\n");
      out.write("<h1 class=\"mt-5 text-center\">Lista de Incidentes</h1>\r\n");
      out.write("        <form class=\"d-flex mb-20 form-filter\" role=\"search\">\r\n");
      out.write("            <div class=\"mb-3 input-filter\">\r\n");
      out.write("                <label for=\"statusFilter\" class=\"form-label\">Estado</label>\r\n");
      out.write("                <select class=\"form-select\" id=\"statusFilter\">\r\n");
      out.write("                    <option selected>Seleccione un estado</option>\r\n");
      out.write("                    <option>Abierto</option>\r\n");
      out.write("                    <option>En Progreso</option>\r\n");
      out.write("                    <option>Resuelto</option>\r\n");
      out.write("                    <option>Cerrado</option>\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"mb-3 input-filter\">\r\n");
      out.write("                <label for=\"categoryFilter\" class=\"form-label\">Categoría</label>\r\n");
      out.write("                <select class=\"form-select\" id=\"categoryFilter\">\r\n");
      out.write("                    <option selected>Seleccione una categoria</option>\r\n");
      out.write("                    <option>Hardware</option>\r\n");
      out.write("                    <option>Software</option>\r\n");
      out.write("                    <option>Red</option>\r\n");
      out.write("                    <option>Otros</option>\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"mb-3 input-filter\">\r\n");
      out.write("                <label for=\"dateFilter\" class=\"form-label\">Fecha</label>\r\n");
      out.write("                <input type=\"date\" class=\"form-control\" id=\"dateFilter\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"mb-3 input-filter\">\r\n");
      out.write("                <label for=\"positionFilter\" class=\"form-label\">Cargo</label>\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"positionFilter\" placeholder=\"Cargo\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"button\" class=\"btn btn-outline-success btn-sm button-filter\">\r\n");
      out.write("                Buscar\r\n");
      out.write("            </button>\r\n");
      out.write("        </form>\r\n");
      out.write("\r\n");
      out.write("        <table class=\"table table-success table-striped-columns mt-3\">\r\n");
      out.write("            <thead>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"col\">ID</th>\r\n");
      out.write("                    <th scope=\"col\">Usuario</th>\r\n");
      out.write("                    <th scope=\"col\">Categoría</th>\r\n");
      out.write("                    <th scope=\"col\">Estado</th>\r\n");
      out.write("                    <th scope=\"col\">Fecha de reporte</th>\r\n");
      out.write("                    <th scope=\"col\">Cargo</th>\r\n");
      out.write("                    <th scope=\"col\">Opciones</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </thead>\r\n");
      out.write("            <tbody class=\"table-group-divider\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"row\">001</th>\r\n");
      out.write("                    <td>Mario Carranza Pérez</td>\r\n");
      out.write("                    <td>Hardware</td>\r\n");
      out.write("                    <td>Abierto</td>\r\n");
      out.write("                    <td>2024-06-03</td>\r\n");
      out.write("                    <td>Ingeniero de Soporte</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <button class=\"btn btn-primary btn-sm\">Ver Detalles</button>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"row\">002</th>\r\n");
      out.write("                    <td>Karen Gutiérrez</td>\r\n");
      out.write("                    <td>Software</td>\r\n");
      out.write("                    <td>En Progreso</td>\r\n");
      out.write("                    <td>2024-06-04</td>\r\n");
      out.write("                    <td>Técnico de Redes</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <button class=\"btn btn-primary btn-sm\">Ver Detalles</button>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"row\">003</th>\r\n");
      out.write("                    <td>Jacob Thornton</td>\r\n");
      out.write("                    <td>Red</td>\r\n");
      out.write("                    <td>Cerrado</td>\r\n");
      out.write("                    <td>2024-06-05</td>\r\n");
      out.write("                    <td>Administrador de Sistemas</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <button class=\"btn btn-primary btn-sm\">Ver Detalles</button>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"row\">004</th>\r\n");
      out.write("                    <td>Luisa Fernández</td>\r\n");
      out.write("                    <td>Hardware</td>\r\n");
      out.write("                    <td>Abierto</td>\r\n");
      out.write("                    <td>2024-06-06</td>\r\n");
      out.write("                    <td>Especialista en Soporte</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <button class=\"btn btn-primary btn-sm\">Ver Detalles</button>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th scope=\"row\">005</th>\r\n");
      out.write("                    <td>Pedro Ramírez</td>\r\n");
      out.write("                    <td>Software</td>\r\n");
      out.write("                    <td>En Progreso</td>\r\n");
      out.write("                    <td>2024-06-07</td>\r\n");
      out.write("                    <td>Ingeniero de Soporte</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <button class=\"btn btn-primary btn-sm\">Ver Detalles</button>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </tbody>\r\n");
      out.write("        </table>\r\n");
      out.write("        </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}