<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Favicon -->
        <link href="images/favicon.ico" rel="icon" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Bootstrap css -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Main css -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
            integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <!-- Font-Awesome-Icons-CSS -->
        <title>Registro de incidente | Toulouse Lautrec</title>
    </head>

    <body>
        <!--Navbar-->
        <jsp:include page="components/navbar.jsp" />
        <!--//Navbar-->

        <div class="container-fluid background">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <h1 class="my-5 text-center">Lista de Colaboradores</h1>
                    <div class="col-auto">
                        <form class="row g-3" role="search">
                            <div class="col-auto mb-3 input-filter">
                                <label for="categoryFilter" class="form-label">Sede</label>
                                <select class="form-select" id="categoryFilter">
                                    <option selected>Seleccione una sede</option>
                                    <option>Hardware</option>
                                    <option>Software</option>
                                    <option>Red</option>
                                    <option>Otros</option>
                                </select>
                            </div>
                            <div class="col-auto mb-3 input-filter">
                                <label for="statusFilter" class="form-label">Estado</label>
                                <select class="form-select" id="statusFilter">
                                    <option selected>Seleccione un estado</option>
                                    <option>Abierto</option>
                                    <option>En Progreso</option>
                                    <option>Resuelto</option>
                                    <option>Cerrado</option>
                                </select>
                            </div>
                            <div class="col-auto mb-3 input-filter">
                                <label for="positionFilter" class="form-label">Cargo</label>
                                <input type="text" class="form-control" id="positionFilter" placeholder="Cargo">
                            </div>
                            <div class="col-auto mb-3 align-content-end">
                                <button type="button" class="btn btn-outline-primary button-filter">
                                    Buscar
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="table-responsive col-auto mb-5">
                        <table class="table table-success table-striped-columns mt-3">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Usuario</th>
                                    <th scope="col">Categoría</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Fecha de reporte</th>
                                    <th scope="col">Cargo</th>
                                    <th scope="col">Opciones</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <tr>
                                    <th scope="row">001</th>
                                    <td>Mario Carranza Pérez</td>
                                    <td>Hardware</td>
                                    <td>Abierto</td>
                                    <td>2024-06-03</td>
                                    <td>Ingeniero de Soporte</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Ver Detalles</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">002</th>
                                    <td>Karen Gutiérrez</td>
                                    <td>Software</td>
                                    <td>En Progreso</td>
                                    <td>2024-06-04</td>
                                    <td>Técnico de Redes</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Ver Detalles</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">003</th>
                                    <td>Jacob Thornton</td>
                                    <td>Red</td>
                                    <td>Cerrado</td>
                                    <td>2024-06-05</td>
                                    <td>Administrador de Sistemas</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Ver Detalles</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">004</th>
                                    <td>Luisa Fernández</td>
                                    <td>Hardware</td>
                                    <td>Abierto</td>
                                    <td>2024-06-06</td>
                                    <td>Especialista en Soporte</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Ver Detalles</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">005</th>
                                    <td>Pedro Ramírez</td>
                                    <td>Software</td>
                                    <td>En Progreso</td>
                                    <td>2024-06-07</td>
                                    <td>Ingeniero de Soporte</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">Ver Detalles</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>