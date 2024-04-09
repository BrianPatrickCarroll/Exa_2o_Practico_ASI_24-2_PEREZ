<%-- 
    Document   : ingresaremp
    Created on : 21/03/2024, 10:32:24 AM
    Author     : leona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="includes/header.jsp"/>
<div class="container well">
    <center>
        <h3>Alta Empleados </h3>
    </center>
    <!--Colocar formulario aqui-->
    <div class="row col-md-4"></div>
    <div class="row col-md-5">
        <form role="form"  action="ingresar.jsp" method="POST">
            <div class="col-md-10">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Campos requeridos</strong></div>
                <div class="form-group">
                    <label for="numero_empleado">Numero de Empleado</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="numero_empleado" id="numero_empleado" placeholder="Ingresa Numero de Empleado" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="password" name="password" placeholder="Ingresa la Contraseña" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre del Empleado: </label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingresa nombre del empleado" required>
                        <span class="input-group-addon"><span class="glyphicon-glyphiconasterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="puesto">Puesto del Empleado: </label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="puesto" name="puesto" placeholder="Ingresa nombre del empleado" required>
                        <span class="input-group-addon"><span class="glyphicon-glyphiconasterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="dias_trabajados">Dias Trabajados: </label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="dias_trabajados" name="dias_trabajados" placeholder="Ingresa nombre del empleado" required>
                        <span class="input-group-addon"><span class="glyphicon-glyphiconasterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="sueldo_diario">Sueldo Diario: </label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="sueldo_diario" name="sueldo_diario" placeholder="Ingresa nombre del empleado" required>
                        <span class="input-group-addon"><span class="glyphicon-glyphiconasterisk"></span></span>
                    </div>
                </div>
                <input type="submit" class="btn btn-info" value="Guardar datos Empleado">
            </div>
        </form>

    </div>    
</div>

<jsp:include page="includes/footer.jsp"/>