<%-- 
    Document   : sair
    Created on : 29 de abr. de 2023, 15:17:50
    Author     : vilar
--%>

<%@ include file="referencias.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <%@ include file="estilos.jsp" %>
        <%@ include file="testaSessao.jsp" %>
        <title>sair</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
