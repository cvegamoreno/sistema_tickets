<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="es">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="images/favicon.ico" rel="icon">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Main css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
      integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Font-Awesome-Icons-CSS -->
    <title>Reportes | Toulouse Lautrec</title>
  </head>

  <body>
    <!--Navbar-->
    <jsp:include page="components/navbar.jsp" />
    <!--//Navbar-->

    <div class="container-fluid background">
      <div class="container">
        <h1 class="pt-5 text-center">Generar Reportes</h1>
        <div class="col-12 d-flex justify-content-center align-items-center text-white">
          <form class="w-75">
            <div class="form-group">
              <label for="tipoReporte">Tipo de Reporte</label>
              <select class="form-select" id="tipoReporte" name="tipoReporte">
                <option selected>Seleccione un tipo de reporte</option>
                <option>Incidentes por Categoría</option>
                <option>Peticiones por Tipo</option>
                <option>Estado del Inventario</option>
                <option>Tiempo de Resolución</option>
              </select>
            </div>
            <div class="form-group">
              <label for="fechaInicio">Fecha de Inicio</label>
              <input type="date" class="form-control" id="fechaInicio" name="fechaInicio">
            </div>
            <div class="form-group">
              <label for="fechaFin">Fecha de Fin</label>
              <input type="date" class="form-control" id="fechaFin" name="fechaFin">
            </div>
            <button style="margin-top: 15px;" type="submit" class="btn btn-primary">Generar Reporte</button>
          </form>
        </div>
        <hr>
          <h3 class="text-white">Reporte Generado</h3>
          <div class="card report-card-container">
            <img class="col-sm-12 pt-3 report-card-container" src="assets/img/webreport.png" alt="Card image cap" />
          </div>

          <div id="reporteGenerado">
            <% String tipoReporte=request.getParameter("tipoReporte"); String
              fechaInicio=request.getParameter("fechaInicio"); String fechaFin=request.getParameter("fechaFin"); if
              (tipoReporte !=null && fechaInicio !=null && fechaFin !=null) { out.println("<p>Generando reporte de " +
              tipoReporte + " desde " + fechaInicio + " hasta " + fechaFin + ".</p>");
              } else {
              out.println("<p>Seleccione los parámetros y haga clic en 'Generar Reporte' para ver el resultado.</p>");
              }
              %>
          </div>
          <footer class="text-center py-4">
            <p>&copy; 2024 Instituto Toulouse Lautrec</p>
          </footer>
      </div>
    </div>
    </div>
    </div>
    <!-- for bootstrap working -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
      integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
      crossorigin="anonymous"></script>
    <script src="libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- //for bootstrap working -->
  </body>

  </html>