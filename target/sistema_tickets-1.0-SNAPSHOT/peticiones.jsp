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
        <title>Registro de Peticiones | Toulouse Lautrec</title>
    </head>

    <body>
        <!--Navbar-->
        <jsp:include page="components/navbar.jsp" />
        <!--//Navbar-->

        <div class="container-fluid background">
            <div class="container">
                <div class="text-end">
                    <button type="submit" class="btn btn-primary mt-3" name="action" value="incidentes"
                        onclick="window.location.href='lista-peticiones.jsp'">
                        Lista de Peticiones
                    </button>
                </div>
                <h1 class="mt-5 text-center">Registro de Petición</h1>
                <div class="col-12 d-flex justify-content-center align-items-center text-white">
                    <form class="w-lg-50">
                      <div class="mb-3">
                        <label for="userName" class="form-label">Nombre del usuario</label>
                        <input type="text" class="form-control" id="userName" placeholder="Nombre del usuario">
                    </div>
                    <div class="mb-3">
                        <label for="userEmail" class="form-label">Correo electrónico</label>
                        <input type="email" class="form-control" id="userEmail" placeholder="Correo electrónico">
                    </div>
                    <div class="mb-3">
                        <label for="requestType" class="form-label">Tipo de petición</label>
                        <select class="form-select" id="requestType">
                            <option selected>Seleccione un tipo de peticion</option>
                            <option>Instalación de Software</option>
                            <option>Solicitud de Equipo</option>
                            <option>Configuración de Red</option>
                            <option>Otros</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="requestDescription" class="form-label">Descripción de la petición</label>
                        <textarea class="form-control" id="requestDescription" placeholder="Describa la petición" rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="equipmentLocation" class="form-label">Ubicación del equipo</label>
                        <input type="text" class="form-control" id="equipmentLocation" placeholder="Ubicación del equipo">
                    </div>
                    <div class="mb-3">
                        <label for="attachment" class="form-label">Adjuntar archivos (Opcional)</label>
                        <input type="file" class="form-control-file" style="color: #FFFF;" id="attachment">
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar Petición</button>
                    </form>
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