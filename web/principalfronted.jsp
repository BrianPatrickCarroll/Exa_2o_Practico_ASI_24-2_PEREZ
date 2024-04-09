<%-- 
    Document   : principalfronted
    Created on : 21/03/2024, 10:09:22 AM
    Author     : PC-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/>
<%@include file="conexionfrontend.jsp"%>
<%@page errorPage="error.jsp"%>
<div class="container well">
    <center>
        <div class="thumbnail">

        </div>
        
    </center>  
    
    <a class="btn bg-primary" href="ingresaemp.jsp"><h3>Alta de Empleados</h3></a><br>

    <div class="row col-md-12" >
        <table class="table table-striped table-bordered table-hover" style="text-align: center">
            <thead>
                <tr>
                    <th style="text-align: center">CODIGO</th>
                    <th style="text-align: center">NUMERO DE EMPLEADO</th>
                    <th style="text-align: center">CONTRASEÑA</th>
                    <th style="text-align: center">NOMBRE EMPLEADO</th>
                    <th style="text-align: center">PUESTO</th>
                    <th style="text-align: center">DIAS TRABAJADOS</th>
                    <th style="text-align: center">SUELDO DIARIO</th>
                    <th style="text-align: center">SUELDO TOTAL</th>
                </tr>
            </thead>
            <tbody>

                <%
                    st = conexion.prepareStatement("select * from empleados");
                    rs = st.executeQuery();
                    while (rs.next()) {//inicia while
                %>  
                <tr>
                    <td><%=rs.getString("codigo")%></td>
                    <td><%=rs.getString("numero_empleado")%></td>
                    <td><%=rs.getString("password")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("puesto")%></td>
                    <td><%=rs.getString("dias_trabajados")%></td>
                    <td><%=rs.getString("sueldo_diario")%></td>
                    <td><%=rs.getString("sueldo_total")%></td>
                </tr>
                <%
                    }//termina while  
                %>
            </tbody>
        </table>
    </div>


</div>

<jsp:include page="includes/footer.jsp"/>