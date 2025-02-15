<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="images/favicon.ico" rel="icon">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Main css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Font-Awesome-Icons-CSS -->
    <title>Menú Principal | Toulouse Lautrec</title>
</head>
<body>
    <c:choose>
        <c:when test="${sessionScope.user == null}">
            <script type="text/javascript">
                Swal.fire({
                    icon: 'warning',
                    title: 'Debe loguearse primero',
                    showConfirmButton: true,
                    confirmButtonText: 'Ok'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = 'index.jsp';
                    }
                });
            </script>
        </c:when>
        <c:otherwise>
            <jsp:include page="components/mensaje.jsp" />
            <!--Navbar-->
            <jsp:include page="components/navbar.jsp" />
            <!--//Navbar-->

            <div class="container p-0 align-content-center">
                <div class="row justify-content-center g-4">
                    <div class="text-center">
                        <h1>Centro de Soporte</h1>
                        <p>Con el objetivo de mejorar la eficiencia en el manejo de las solicitudes de soporte y
                            proporcionarle un servicio más efectivo, hemos implementado un sistema de tickets de soporte. Da
                            Desarrollo y Asesoría | Tu Aliado de Negocio
                        </p>
                    </div>
                    <c:choose>
                        <c:when test="${sessionScope.user.tipoUsuarioId == 1}">
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/servicio-al-cliente.webp" alt="" class="img-fluid">
                                <a href="incidentes.jsp" class="btn btn-primary d-block mt-1">Incidentes</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/peticiones.png" alt="" class="img-fluid">
                                <a href="peticiones.jsp" class="btn btn-primary d-block mt-1">Peticiones</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/reporte.png" alt="" class="img-fluid">
                                <a href="reporte.jsp" class="btn btn-primary d-block mt-1">Reportes</a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/servicio-al-cliente.webp" alt="" class="img-fluid">
                                <a href="incidentes.jsp" class="btn btn-primary d-block mt-1">Incidentes</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/peticiones.png" alt="" class="img-fluid">
                                <a href="peticiones.jsp" class="btn btn-primary d-block mt-1">Peticiones</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/inventario.jpg" alt="" class="img-fluid">
                                <a href="inventario.jsp" class="btn btn-primary d-block mt-1">Inventario</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/colaboradores.png" alt="" class="img-fluid">
                                <a href="colaborador.jsp" class="btn btn-primary d-block mt-1">Colaboradores</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/reporte.png" alt="" class="img-fluid">
                                <a href="reporte.jsp" class="btn btn-primary d-block mt-1">Reportes</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/registrode-proveedores.webp" alt="" class="img-fluid">
                                <a href="proveedores.jsp" class="btn btn-primary d-block mt-1">Provedores</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/historial.png" alt="" class="img-fluid">
                                <a href="historial.jsp" class="btn btn-primary d-block mt-1">Historial</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/areas.png" alt="" class="img-fluid">
                                <a href="areas.jsp" class="btn btn-primary d-block mt-1">Areas</a>
                            </div>
                            <div class="col-6 col-md-4 col-lg-2">
                                <img src="assets/img/asignacion-equipos.png" alt="" class="img-fluid">
                                <a href="asignacion-equipos.jsp" class="btn btn-primary d-block mt-1">Asignacion de Equipos</a>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </c:otherwise>
    </c:choose>

    <!-- for bootstrap working -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
            integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
            crossorigin="anonymous"></script>
    <script src="libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- //for bootstrap working -->
</body>
</html>
