<%-- 
    Document   : agregar
    Created on : 17 nov 2021, 20:37:24
    Author     : elard
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
     
<%
    String dni=request.getParameter("textfield");
    String nom=request.getParameter("textfield2");
    String ape=request.getParameter("textfield3");
    String email=request.getParameter("email");
    String contra=request.getParameter("textfield4");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con ;
    con=DriverManager.getConnection("jdbc:mysql://localhost:3307/electrodomesticos","root",""); 
    PreparedStatement ps=con.prepareStatement("insert into cliente(dni,nombre, apellido, email, clave) values('"+dni+"','"+nom+"','"+ape+"','"+email+"','"+contra+"')");
    ps.executeUpdate();
    //JOptionPane.showMessageDialog(null,"Se Agrego Correctamete");           
    response.sendRedirect("iniciar_sesion.jsp");
%>

