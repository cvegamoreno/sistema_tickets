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
        <h1 class="py-5 text-center">Registro de Proveedor</h1>
        <div
          class="col-12 d-flex justify-content-center align-items-center text-white"
        >
          <form class="w-75">
            <div class="row g-3">
              <div class="form-group col-md-6">
                <label for="providerName">Nombre del Proveedor</label>
                <input
                  type="text"
                  class="form-control"
                  id="providerName"
                  placeholder="Nombre del proveedor"
                />
              </div>
              <div class="form-group col-md-6">
                <label for="providerEmail">Correo Electrónico</label>
                <input
                  type="email"
                  class="form-control"
                  id="providerEmail"
                  placeholder="Correo electrónico"
                />
              </div>
              <div class="form-group col-md-6">
                <label for="providerPhone">Teléfono</label>
                <input
                  type="text"
                  class="form-control"
                  id="providerPhone"
                  placeholder="Teléfono"
                />
              </div>
              <div class="form-group col-md-6">
                <label for="providerType">Tipo de Proveedor</label>
                <select class="form-select" id="providerType">
                  <option selected>Seleccione un tipo de proveedor</option>
                  <option>Hardware</option>
                  <option>Software</option>
                  <option>Servicios</option>
                  <option>Otros</option>
                </select>
              </div>
              <div class="form-group col-md-6">
                <label for="status">Estado</label>
                <select class="form-select" id="status">
                  <option selected>Seleccione un Estado</option>
                  <option>Activo</option>
                  <option>Inactivo</option>
                </select>
              </div>
              <div class="form-group col-md-12">
                <label for="additionalNotes">Notas Adicionales</label>
                <textarea
                  class="form-control"
                  id="additionalNotes"
                  placeholder="Agregar notas adicionales"
                  rows="3"
                ></textarea>
              </div>
            </div>
            <button type="submit" class="btn btn-primary mt-3 mb-5">
              Registrar Proveedor
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
  </body>
</html>
