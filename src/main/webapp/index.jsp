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
        <title>Menú Principal | Toulouse Lautrec</title>
    </head>

    <body>
        <!--Navbar-->
        <jsp:include page="components/navbar.jsp" />
        <!--//Navbar-->

        <div class="row container-fluid p-0">
            <div class="col-lg-6 col-12">
                <img src="assets/img/logo-toulouse.jpg" alt="fondo" class="img-fluid">
            </div>
            <div class="col-lg-6 col-12 d-flex justify-content-center align-items-center">
                <form action="" method="get" class="w-50">
                    <p class="h3 text-primary">Login</p>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email"
                               placeholder="nombre@toulouse.com">
                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="pass"
                               placeholder="ingresa tu contraseña">
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Iniciar Sesion</button>
                    </div>

                </form>
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