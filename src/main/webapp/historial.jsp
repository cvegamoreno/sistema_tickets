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
        <title>Registro de historial | Toulouse Lautrec</title>
    </head>

    <body>
        <!--Navbar-->
        <jsp:include page="components/navbar.jsp" />
        <!--//Navbar-->

        <div class="container-fluid background">
            <div class="container-lg">
                <div class="row d-flex justify-content-center">
                    <h1 class="pt-5 text-center">Historial de Incidentes por Equipo</h1>
                    <div class="col-12 col-md-10 col-lg-8 text-white">
                        <form>
                            <div class="form-group">
                                <label for="equipoId">ID del Equipo</label>
                                <input type="text" class="form-control" id="equipoId" name="equipoId"
                                    placeholder="Ingrese el ID del Equipo">
                            </div>
                            <button type="submit" style="margin-top: 15px;" class="btn btn-primary mb-5">Ver
                                Historial</button>
                        </form>

                    </div>
                    <hr>
                    
                    <div class="col-12 col-md-10 col-lg-8 table-responsive mb-5">
                        <h3>Historial de Incidentes</h3>
                        <table class="table table-striped mt-3">
                            <thead class="text-white">
                                <tr>
                                    <th>ID del Incidente</th>
                                    <th>Fecha</th>
                                    <th>Categoría</th>
                                    <th>Descripción</th>
                                    <th>Estado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>001</td>
                                    <td>2024-06-01</td>
                                    <td>Hardware</td>
                                    <td>Falla en el disco duro</td>
                                    <td>Pendiente</td>
                                </tr>
                                <tr>
                                    <td>002</td>
                                    <td>2024-05-01</td>
                                    <td>Hardware</td>
                                    <td>Falla en la tarjeta</td>
                                    <td>Pendiente</td>
                                </tr>
                                <tr>
                                    <td>003</td>
                                    <td>2024-06-01</td>
                                    <td>Hardware</td>
                                    <td>Falla en el disco duro</td>
                                    <td>Pendiente</td>
                                </tr>
                            </tbody>
                        </table>
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