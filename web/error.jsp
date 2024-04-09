<%-- 
    Document   : error
    Created on : 19/03/2024, 10:45:06 AM
    Author     : PC-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/>


<div class="container well">
    <center>
        <h3> Sistema de Administracion Perez</h3>
    </center>
    <div class="thumbnail">
        <center>
            <h2>Mensaje Importante del Sistema</h2>
            <h3><i>Favor de Comunicar a el administrador este mensaje</i></h3>
            <hr>
            <%@page isErrorPage="true" %>
            <div class="alert alert-danger" role="alert">
                <h3>Ha ocurrido un error producido por: </h3>
                <h3><i><%= exception %></i></h3>
            </div>
            <a href="principalfronted.jsp"><h4>Regresar a formulario alta de usuario</h4></a>
            <hr>
            <h3>Fecha y hora del sistema: <%= new java.util.Date()%></h3>
        </center>
    </div>
</div>


<jsp:include page="includes/footer.jsp"/>
