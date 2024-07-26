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
        <title>Asignacion de equipos | Toulouse Lautrec</title>
    </head>

    <body>
        <!--Navbar-->
        <jsp:include page="components/navbar.jsp" />
        <!--//Navbar-->

        <div class="container-fluid background">
            <div class="container">
                <h1 class="pt-5 text-center">Asignación de Equipos</h1>
                <div class="col-12 d-flex justify-content-center align-items-center text-white">
                    <form class="w-75">
                        <div class="row gy-3">
                            <div class="form-group col-md-6">
                                <label for="employeeName">Nombre del Colaborador</label>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0">
                                        </path>
                                        </svg>
                                    </span>
                                    <input type="text" class="form-control" id="employeeName" placeholder="Nombre del colaborador">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="employeeDepartment">Departamento</label>
                                <select class="form-select" id="employeeDepartment">
                                    <option selected>Seleccione un departamento</option>
                                    <option>TI</option>
                                    <option>Comunicación</option>
                                    <option>Marketing</option>
                                    <option>Administración</option>
                                    <option>Recursos Humanos</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="equipmentName">Nombre del Equipo</label>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0">
                                        </path>
                                        </svg>
                                    </span>
                                    <input type="text" class="form-control" id="equipmentName" placeholder="Nombre del equipo">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="equipmentType">Tipo de Equipo</label>
                                <select class="form-select" id="equipmentType">
                                    <option selected>Seleccione un tipo de equipo</option>
                                    <option>Computadora</option>
                                    <option>Dispositivo Móvil</option>
                                    <option>Periférico</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="serialNumber">Número de Serie</label>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0">
                                        </path>
                                        </svg>
                                    </span>
                                    <input type="text" class="form-control" id="serialNumber" placeholder="Número de serie del equipo">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="assignmentDate">Fecha de Asignación</label>
                                <input type="date" class="form-control" id="assignmentDate">
                            </div> 
                            <div class="form-group col-md-12">
                                <label for="additionalNotes">Notas Adicionales</label>
                                <textarea class="form-control" id="additionalNotes" placeholder="Agregar notas adicionales"
                                          rows="3"></textarea>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary mt-3 mb-5">Asignar Equipo</button>
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

</html>
