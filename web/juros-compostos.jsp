<%-- 
    Document   : juros-compostos.jsp
    Created on : 17 de set. de 2024, 14:00:03
    Author     : piero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>
<!DOCTYPE html>
<%
    String errorMessage = null;
    double n1=0;
    double n2=0;
    double n3=0;
    double result = 0;
    try {
    if(request.getParameter("enviar")!=null){
        n1 = Double.parseDouble(request.getParameter("n1"));
        n2 = Double.parseDouble(request.getParameter("n2"));
        n3 = Double.parseDouble(request.getParameter("n3"));
        result = n1 * Math.pow((1 + (n3 / 100)), n2);
    }
        } catch (Exception ex) {
            errorMessage = ex.getMessage();
        }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Juros Compostos</h1>
        <form action="juros-compostos.jsp" method="get">
        <input placeholder="valor inicial" name="n1" type="number">
        <input placeholder="Meses de juros acumulados" name="n2" type="number">
        <input placeholder="Porcentagem de juros" name="n3" type="number">
        <input name="enviar"type="submit">
        </form>
        <h3>Resultado Dos Juros Simples: <%=result%></h3>
        
    </body>
</html>
<%@include file="jspf/footer.jspf" %>