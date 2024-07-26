<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
      <div class="container">
        <h1 class="pt-5 text-center">Registro de Colaboradores</h1>
        <div class="col-12 d-flex justify-content-center align-items-center text-white">
          <form class="w-75">
            <div class="row g-3">
              <div class="form-group col-md-6">
                <label for="nombre">Nombre del Colaborador</label>
                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre del Colaborador" />
              </div>
              <div class="form-group col-md-6">
                <label for="nombre">Apellidos del Colaborador</label>
                <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos del Colaborador" />
              </div>
              <div class="form-group col-md-6">
                <label for="nombre">DNI del Colaborador</label>
                <input type="text" class="form-control" id="dni" name="dni" placeholder="DNI del Colaborador" />
              </div>
              <div class="form-group col-md-6">
                <label for="correo">Correo Electrónico</label>
                <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo Electrónico" />
              </div>
              <div class="form-group col-md-6">
                <label for="departamento">Departamento</label>
                <div class="input-group">
                  <span class="input-group-text" id="basic-addon1">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="16"
                      height="16"
                      fill="currentColor"
                      class="bi bi-search"
                      viewBox="0 0 16 16"
                    >
                      <path
                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"
                      ></path>
                    </svg>
                  </span>
                  <input list="departamentos" class="form-control" id="departamento" name="departamento" placeholder="Departamento" />
                  <datalist id="departamentos">
                    <option value="Departamento de TI"></option>
                    <option value="Departamento de Comunicación"></option>
                    <option value="Departamento de Marketing"></option>
                    <option value="Departamento de Recursos Humanos"></option>
                    <option value="Departamento de Finanzas"></option>
                    <option value="Departamento de Ventas"></option>
                    <option value="Departamento de Operaciones"></option>
                  </datalist>
                </div>
              </div>
              <div class="form-group col-md-6">
                <label for="perfilUsuario">Perfil de Usuario</label>
                <input type="text" class="form-control" id="perfilUsuario" name="perfilUsuario" placeholder="Perfil de Usuario" />
              </div>
              <div class="form-group col-md-6">
                <label for="estado">Estado</label>
                <select class="form-select" id="estado">
                  <option selected>Seleccione un Estado</option>
                  <option>Activo</option>
                  <option>Inactivo</option>
                </select>
              </div>
              <div class="form-group col-md-6">
                <label for="sede">Sede</label>
                <input type="text" class="form-control" id="sede" name="sede" placeholder="Sede" />
              </div>
              <div class="form-group">
                <label for="celular">Celular</label>
                <input type="text" class="form-control" id="celular" name="celular" placeholder="Celular" />
              </div>
              <div class="form-group">
                <label for="direccion">Dirección</label>
                <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección" />
              </div>
            </div>
            <button type="submit" style="margin-top: 15px" class="btn btn-primary my-5">Guardar Colaborador</button>
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
  </body>
</html>
