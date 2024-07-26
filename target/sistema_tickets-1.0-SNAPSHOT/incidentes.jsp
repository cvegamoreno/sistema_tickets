<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Favicon -->
        <link href="images/favicon.ico" rel="icon" />
        <link
            href="css/bootstrap.css"
            rel="stylesheet"
            type="text/css"
            media="all"
            />
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
            <div class="container">
                <div class="text-end">
                    <a href="lista-incidentes.jsp" class="btn btn-primary mt-3">Lista de Incidentes</a>
                </div>
                <h1 class="mt-5 text-center">Registro de Incidente</h1>
                <div class="col-12 d-flex justify-content-center align-items-center text-white">
                    <form class="w-75">
                        <div class="row gy-3">
                            <div class="col-md-6">
                                <label for="userName">Nombre del usuario</label>
                                <input type="text" class="form-control" id="userName" placeholder="Nombre del usuario" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="userArea">Área que pertenece</label>
                                <input type="text" class="form-control" id="userArea" placeholder="Área (ej: Marketing)" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="category">Categoría</label>
                                <select class="form-select" id="category">
                                    <option selected>Seleccione una categoria</option>
                                    <option>Hardware</option>
                                    <option>Software</option>
                                    <option>Red</option>
                                    <option>Otros</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="subcategory">Subcategoría</label>
                                <select class="form-select" id="subcategory">
                                    <option selected>Seleccione una subcategoria</option>
                                    <option>Problema de Hardware</option>
                                    <option>Falla de Software</option>
                                    <option>Problema de Red</option>
                                    <option>Otro</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="createDate">Fecha de Creacion</label>
                                <input type="date" class="form-control" id="createDate" placeholder="Fecha de Creacion" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="closeDate">Fecha de Cierre</label>
                                <input type="date" class="form-control" id="closeDate" placeholder="Fecha de Cierre" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="source">Tipo de Contacto</label>
                                <select class="form-select" id="source">
                                    <option selected>Seleccione un tipo de contacto</option>
                                    <option>Teléfono</option>
                                    <option>Correo</option>
                                    <option>In situ</option>
                                    <option>Chat</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="userEmail">Correo electrónico</label>
                                <input type="email" class="form-control" id="userEmail" placeholder="Correo electrónico" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="equipmentLocation">Ubicación del equipo</label>
                                <input type="text" class="form-control" id="equipmentLocation" placeholder="Ubicación del equipo" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="status">Estado</label>
                                <select class="form-select" id="status" onchange="toggleWaitReason()">
                                    <option selected>Seleccione un Estado</option>
                                    <option>Abierto</option>
                                    <option>Pendiente</option>
                                    <option>Cancelado</option>
                                    <option>Resuelto</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6 d-none" id="sourceContainer">
                                <label for="source">Motivo de espera</label>
                                <select class="form-select" id="source">
                                    <option selected>Seleccione un motivo de espera</option>
                                    <option>En espera de proveedor</option>
                                    <option>En espera de atención</option>
                                    <option>En espera de usuario</option>
                                </select>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="problemDescription">Descripción del problema</label>
                                <textarea class="form-control" id="problemDescription" placeholder="Describa el problema" rows="3"></textarea>
                            </div>
                            <div class="form-group col-md-12" style="margin-top: 15px">
                                <label for="attachment">Adjuntar archivos (Opcional)</label>
                                <input type="file" class="form-control-file" id="attachment" />
                            </div>
                        </div>
                        <button type="submit" style="margin-top: 15px" class="btn btn-primary mb-4" >
                            Enviar Incidente
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <!-- for bootstrap working -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
            integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
            crossorigin="anonymous"
        ></script>
        <script src="libs/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- //for bootstrap working -->

        <script>
                                    function toggleWaitReason() {
                                        var status = document.getElementById('status').value;
                                        var sourceContainer = document.getElementById('sourceContainer');
                                        if (status === 'Pendiente') {
                                            sourceContainer.style.display = 'block';
                                        } else {
                                            sourceContainer.style.display = 'none';
                                        }
                                    }
        </script>
    </body>
</html>
