<%-- 
    Document   : conexionfrontend
    Created on : 14/03/2024, 10:40:55 AM
    Author     : PC-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page language = "java" import = "java.sql.*"  %>
<%
    
    Connection conexion=null; //conexion a base de datos
    PreparedStatement st=null; //sentecias SQL
    ResultSet rs=null;//resultado final de datos
   
    Class.forName("com.mysql.jdbc.Driver");
    conexion=DriverManager.getConnection("jdbc:mysql://localhost/bdasiperezexamen", "uasiperez", "asi123");
%>