<%-- 
    Document   : Validarusuario
    Created on : 23 nov 2021, 18:51:46
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
    String vdni = request.getParameter("vdni");    
    String vpwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con ;
    con=DriverManager.getConnection("jdbc:mysql://localhost:3307/electrodomesticos","root",""); 
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from cliente where email='" + vdni + "' and clave='" + vpwd + "'");
    if (rs.next()) {
            session.setAttribute("vdni", vdni);
            response.sendRedirect("index.jsp");
    } else {
            response.sendRedirect("errorlogin.jsp");
    }
%>
