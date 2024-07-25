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
        <title>Registro de incidente | Toulouse Lautrec</title>
    </head>

    <body>
        <!--Navbar-->
        <jsp:include page="components/navbar.jsp" />
        <!--//Navbar-->

        <div class="container-fluid background">
            <div class="container">
                <h1 class="pt-5 text-center">Gestión de Inventario</h1>
                <div class="row">
                    <div class="col-12 d-flex justify-content-center align-items-center text-white">
                        <form class="w-75 d-flex">
                            <div class="mb-3 input-filter">
                                <label for="categoryFilter" class="form-label">Categoría</label>
                                <select class="form-select" id="categoryFilter">
                                    <option selected>Seleccione una categoria</option>
                                    <option>Computador</option>
                                    <option>Dispositivo Móvil</option>
                                    <option>Periférico</option>
                                    <option>Otros</option>
                                </select>
                            </div>
                            <div class="mb-3 input-filter">
                                <label for="statusFilter" class="form-label">Estado</label>
                                <select class="form-select" id="statusFilter">
                                    <option selected>Seleccione un estado</option>
                                    <option>Nuevo</option>
                                    <option>En Uso</option>
                                    <option>En Reparación</option>
                                    <option>Retirado</option>
                                </select>
                            </div>
                            <div class="mb-3 input-filter">
                                <label for="locationFilter" class="form-label">Ubicación</label>
                                <input type="text" class="form-control" id="locationFilter" placeholder="Ubicación">
                            </div>
                            <div class="mb-3 align-content-end">
                                <button type="button" class="btn btn-outline-success button-filter">
                                    Buscar
                                </button>
                            </div>

                        </form>
                    </div>
                    <div class="table-responsive col-12">
                        <table class="table table-success table-striped-columns mt-3">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre del Equipo</th>
                                    <th scope="col">Número de Serie</th>
                                    <th scope="col">Categoría</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Ubicación</th>
                                    <th scope="col">Opciones</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <tr>
                                    <th scope="row">001</th>
                                    <td>Computadora Dell</td>
                                    <td>12345</td>
                                    <td>Computador</td>
                                    <td>En Uso</td>
                                    <td>Laboratorio 1</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Editar</button>
                                        <button class="btn btn-danger btn-sm">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">002</th>
                                    <td>Tablet Samsung</td>
                                    <td>67890</td>
                                    <td>Dispositivo Móvil</td>
                                    <td>En Reparación</td>
                                    <td>Oficina 3</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Editar</button>
                                        <button class="btn btn-danger btn-sm">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">003</th>
                                    <td>Proyector Epson</td>
                                    <td>11223</td>
                                    <td>Periférico</td>
                                    <td>Nuevo</td>
                                    <td>Sala de Conferencias</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Editar</button>
                                        <button class="btn btn-danger btn-sm">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">004</th>
                                    <td>Router Cisco</td>
                                    <td>44556</td>
                                    <td>Periférico</td>
                                    <td>Retirado</td>
                                    <td>Depósito</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Editar</button>
                                        <button class="btn btn-danger btn-sm">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">005</th>
                                    <td>Monitor Samsung</td>
                                    <td>77889</td>
                                    <td>Periférico</td>
                                    <td>En Uso</td>
                                    <td>Laboratorio 2</td>
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