<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Sistema de Gestión de tickets e inventario</title>
    <style></style>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/login.css" />
  </head>
<body>
<div class="container-login">
<div>
    <figure>
                    <img src="assets/img/logo-toulouse.jpg" alt="logo" class="img-logo">
                </figure>
                </div>
<div class="login-div">
    <h2>Login</h2>
      <form action="login" method="post">
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label"
                    >Nombre del usuario</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    name="username"
                    aria-describedby="emailHelp"
                  />
                </div>
                <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label"
                    >Password</label
                  >
                  <input
                    type="password"
                    class="form-control"
                    name="password"
                    id="exampleInputPassword1"
                  />
                </div>

                <button type="submit" class="btn btn-primary" name="action" value="login">
                  Iniciar Sesión
                </button>
              </form>
             </div>
</div>
</body>
</html>
