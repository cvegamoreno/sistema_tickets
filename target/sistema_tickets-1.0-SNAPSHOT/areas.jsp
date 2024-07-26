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
                    <h1 class="mt-5 text-center">Registro de Áreas</h1>
                    <div class="col-12 col-md-10 col-lg-8 text-white">
                        <form>
                            <div class="form-group">
                                <label for="nombreArea">Nombre del Área</label>
                                <input type="text" class="form-control" id="nombreArea" name="nombreArea" placeholder="Nombre del Área">
                            </div>
                            <div class="form-group">
                                <label for="descripcionArea">Descripción del Área</label>
                                <textarea class="form-control" id="descripcionArea" name="descripcionArea" placeholder="Descripción del Área" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary" style="margin-top:15px;">Guardar Área</button>
                        </form>

                    </div>
                    <hr>
                    
                    <div class="col-12 col-md-10 col-lg-8 table-responsive mb-5">
                        <h3>Historial de Incidentes</h3>
                        <table class="table table-success table-striped-columns mt-3">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre del Área</th>
                                    <th scope="col">Descripción</th>
                                    <th scope="col">Opciones</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <tr>
                                    <th scope="row">001</th>
                                    <td>TI</td>
                                    <td>Área de Tecnología de la Información</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Editar</button>
                                        <button class="btn btn-danger btn-sm">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">002</th>
                                    <td>Comunicación</td>
                                    <td>Área de Comunicación Corporativa</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Editar</button>
                                        <button class="btn btn-danger btn-sm">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">003</th>
                                    <td>Marketing</td>
                                    <td>Área de Marketing y Publicidad</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Editar</button>
                                        <button class="btn btn-danger btn-sm">Eliminar</button>
                                    </td>
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