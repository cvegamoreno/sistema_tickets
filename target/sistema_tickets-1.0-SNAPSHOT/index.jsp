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
        <jsp:include page="components/mensaje.jsp" />
        <!--Navbar-->
        <jsp:include page="components/navbar.jsp" />
        <!--//Navbar-->

        <div class="row container-fluid p-0">
            <div class="col-lg-6 col-12">
                <img src="assets/img/logo-toulouse.jpg" alt="fondo" class="img-fluid">
            </div>
            <div class="col-lg-6 col-12 d-flex justify-content-center align-items-center">
                <c:if test="${sessionScope.user ==null}">
                    <form action="AuthControl" method="post" class="w-50">
                        <p class="h3 text-primary">Login</p>

                        <div class="mb-3">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control" id="usuario" name="usuario"
                                   placeholder="ingresa tu usuario sin espacios">
                        </div>
                        <div class="mb-3">
                            <label for="contrasenia" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="contrasenia" name="contrasenia"
                                   placeholder="ingresa tu contraseña">
                        </div>
                        <div class="mb-3">
                            <input type="hidden" name="accion" value="login"/>
                            <button type="submit" class="btn btn-primary">Iniciar Sesion</button>
                        </div>
                    </form>
                </c:if>
                <c:if test="${sessionScope.user !=null}">
                    <form action="AuthControl" method="post" class="w-50">
                        <p class="h3 text-primary">Cambia tu contraseña</p>

                        <div class="mb-3">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" readonly class="form-control-plaintext" id="staticEmail"
                                   name="usuario" value="${sessionScope.user.nombreMayusc()}">
                        </div>
                        <div class="mb-3">
                            <label for="contrasenia" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="contrasenia" name="contrasenia"
                                   placeholder="Modifica tu contraseña">
                        </div>
                        <div class="mb-3">
                            <input type="hidden" name="accion" value="cambiarContrasenia"/>
                            <button type="submit" class="btn btn-primary">Cambiar contraseña</button>
                        </div>
                    </form>
                </c:if>
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