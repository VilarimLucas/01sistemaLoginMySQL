<%-- 
    Document   : testaSessao
    Created on : 29 de abr. de 2023, 15:33:46
    Author     : vilar
--%>

<%
    String usu = (String) session.getAttribute("usuario");
    String nivel = (String) session.getAttribute("nivel");
    if (usu == null) {
        response.sendRedirect("index.jsp");
    }
%>