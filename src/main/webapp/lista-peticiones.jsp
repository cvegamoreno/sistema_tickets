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
    <link rel="stylesheet" href="css/menu.css" />
  </head>
<body  class="first"
            style="
              background-image: url('assets/img/helpdesk-bg.webp');
            ">
  <div style="padding: 10 357;">
   <h1 class="mt-5 text-center">Lista de Peticiones</h1>
         <form class="d-flex mb-20 form-filter" role="search">
             <div class="mb-3 input-filter">
                 <label for="statusFilter" class="form-label">Estado</label>
                 <select class="form-select" id="statusFilter">
                     <option selected>Seleccione un estado</option>
                     <option>Abierto</option>
                     <option>En Progreso</option>
                     <option>Resuelto</option>
                     <option>Cerrado</option>
                 </select>
             </div>
             <div class="mb-3 input-filter">
                 <label for="typeFilter" class="form-label">Tipo de Petición</label>
                 <select class="form-select" id="typeFilter">
                    <option selected>Seleccione un tipo de peticion</option>
                     <option>Instalación de Software</option>
                     <option>Solicitud de Equipo</option>
                     <option>Configuración de Red</option>
                     <option>Otros</option>
                 </select>
             </div>
             <div class="mb-3 input-filter">
                 <label for="dateFilter" class="form-label">Fecha</label>
                 <input type="date" class="form-control" id="dateFilter">
             </div>
             <button type="button" class="btn btn-outline-success btn-sm button-filter">
                 Buscar
             </button>
         </form>

         <table class="table table-success table-striped-columns mt-3">
             <thead>
                 <tr>
                     <th scope="col">ID</th>
                     <th scope="col">Usuario</th>
                     <th scope="col">Tipo de Petición</th>
                     <th scope="col">Estado</th>
                     <th scope="col">Fecha de Reporte</th>
                     <th scope="col">Opciones</th>
                 </tr>
             </thead>
             <tbody class="table-group-divider">
                 <tr>
                     <th scope="row">001</th>
                     <td>Mario Carranza Pérez</td>
                     <td>Instalación de Software</td>
                     <td>Abierto</td>
                     <td>2024-06-03</td>
                     <td>
                         <button class="btn btn-primary btn-sm">Ver Detalles</button>
                     </td>
                 </tr>
                 <tr>
                     <th scope="row">002</th>
                     <td>Karen Gutiérrez</td>
                     <td>Solicitud de Equipo</td>
                     <td>En Proceso</td>
                     <td>2024-06-04</td>
                     <td>
                         <button class="btn btn-primary btn-sm">Ver Detalles</button>
                     </td>
                 </tr>
                 <tr>
                     <th scope="row">003</th>
                     <td>Jacob Thornton</td>
                     <td>Configuración de Red</td>
                     <td>Cerrado</td>
                     <td>2024-06-05</td>
                     <td>
                         <button class="btn btn-primary btn-sm">Ver Detalles</button>
                     </td>
                 </tr>
                 <tr>
                     <th scope="row">004</th>
                     <td>Luisa Fernández</td>
                     <td>Instalación de Software</td>
                     <td>Abierto</td>
                     <td>2024-06-06</td>
                     <td>
                         <button class="btn btn-primary btn-sm">Ver Detalles</button>
                     </td>
                 </tr>
                 <tr>
                     <th scope="row">005</th>
                     <td>Pedro Ramírez</td>
                     <td>Solicitud de Equipo</td>
                     <td>En Proceso</td>
                     <td>2024-06-07</td>
                     <td>
                         <button class="btn btn-primary btn-sm">Ver Detalles</button>
                     </td>
                 </tr>
             </tbody>
         </table>
        </div>
</body>
</html>