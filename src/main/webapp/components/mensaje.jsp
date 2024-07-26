<%-- 
    Document   : mensaje
    Created on : Jul 15, 2024, 1:56:38 AM
    Author     : Carlos
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<c:if test="${sessionScope.success !=null}">
    <script>
        Swal.fire({
            position: "center",
            icon: "success",
            title: "${sessionScope.success}",
            showConfirmButton: false,
            timer: 2000
        });
    </script>
</c:if>

<c:if test="${sessionScope.error !=null}">
    <script>
        Swal.fire({
            position: "center",
            icon: "error",
            title: "${sessionScope.error}",
            showConfirmButton: false,
            timer: 2000
        });
    </script>
</c:if>

<c:if test="${sessionScope.existemail !=null}">
    <script>
        Swal.fire({
            position: "center",
            icon: "error",
            title: "${sessionScope.existemail}",
            text: "Prueba con otro",
            footer: 'o tambien puedes <a href="#" id="loginLink">Iniciar Sesión</a>'
        });

        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('loginLink').addEventListener('click', function (event) {
                event.preventDefault();
                Swal.close();
                $('#exampleModal').modal('show'); // Abrir el modal
            });
        });
    </script>
</c:if>

<c:if test="${sessionScope.logear !=null}">
    <script>
        Swal.fire({
            position: "center",
            icon: "error",
            title: "${sessionScope.logear}",
            footer: '<a href="#" id="loginLink2">Crea tu cuenta</a> o tambien puedes <a href="#" id="loginLink">Iniciar Sesión</a>'
        });

        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('loginLink').addEventListener('click', function (event) {
                event.preventDefault();
                Swal.close();
                $('#exampleModal').modal('show'); // Abrir el modal
            });
        });
        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('loginLink2').addEventListener('click', function (event) {
                event.preventDefault();
                Swal.close();
                $('#exampleModal2').modal('show'); // Abrir el modal
            });
        });
    </script>
</c:if>
    
<c:remove var="success" scope="session"/>
<c:remove var="error" scope="session"/>
<c:remove var="existemail" scope="session"/>
<c:remove var="logear" scope="session"/>