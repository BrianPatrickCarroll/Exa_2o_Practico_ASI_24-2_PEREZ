<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="conexionfrontend.jsp"%>
<%
    //Capturando los datos por medio del request y el metodo getParameter
    String numero_empleado = request.getParameter("numero_empleado");
    String password = request.getParameter("password");
    String nombre = request.getParameter("nombre");
    String puesto = request.getParameter("puesto");
    int dias_trabajados = Integer.parseInt(request.getParameter("dias_trabajados"));
    int sueldo_diario = Integer.parseInt(request.getParameter("sueldo_diario"));
    int sueldo_total= dias_trabajados*sueldo_diario;
    //Sentencia SQL para ingresar datos
    st = conexion.prepareStatement("INSERT INTO empleados VALUES (null, ?, ?, ?, ?, ?, ?, ?)");
    st.setString(1, numero_empleado);
    st.setString(2, password);
    st.setString(3, nombre);
    st.setString(4, puesto);
    st.setInt(5, dias_trabajados);
    st.setInt(6, sueldo_diario);
    st.setInt(7, sueldo_total);
    st.executeUpdate();
    conexion.close();

    response.sendRedirect("principalfronted.jsp");
%>