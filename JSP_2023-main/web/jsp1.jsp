<%-- 
    Document   : jsp1
    Created on : 9 mar 2023, 13:10:58
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2><%=request.getParameter("numero") == null? "Sin dato" : request.getParameter("numero") %></h2>
        <%
            
            int x = (int)((Math.random() * 100 ));
            if( x < 50 )
            {
        %>
                <h1>Es menor a 50</h1>
        <%
            }
            else
            {
        %>
                <h1>Es mayor o igual a 50</h1>
        <%
            }
        %>
        <h1>El valor es <%=x%></h1>
        <a href="jsp2.jsp">Ir a jsp2</a>
    </body>
</html>
