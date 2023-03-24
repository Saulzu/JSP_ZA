<%-- 
    Document   : jsp2
    Created on : 14 mar 2023, 13:12:32
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="source.Datos"%>
<%@page import="source.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anónimo">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">Inicio</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                 </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="jsp2.jsp">JSP2</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="jsp3.jsp">JSP3</a>
                        </li>
                <!--<li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Practicas
                        </a>
                     <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="jsp1.jsp"></a></li>
                        <li><a class="dropdown-item" href="jsp2.jsp"></a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>-->
                </div>
            </div>
        </nav> <br>
        <h1>Mi JSP2</h1>
        <%
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
        
        <table border="1" style="width:70%" align="center">
            <tr style="width:200px">
                <td><h4 align="center">#</h4></td>
                <td><h4 align="center">Id</h4></td>
                <td><h4 align="center">Nombre</h4></td>
                <td><h4 align="center">Calificaci&oacute;n</h4></td>
                <td><h4 align="center">Acciones</h4></td>
            </tr>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            <tr>
                <td><h6 align="center"><%=i + 1%></h6>
                <td><h6 align="center"><%=i%></h6>
                <td><h6 align="center"><%=datos.getNombre()%></h6></td>
                <td><h6 align="center"><%=datos.getCalf()%></h6></td>
                <td>
                    <a href="jsp2.jsp?id=<%=i%>&borrar=Submit" align="center">Borrar</a>
                    <a href="jsp3.jsp?id=<%=i++%>&editar=Submit" align="center">Editar</a>
                </td>
            </tr>
            <%
                }
              }
            %>
        </table>
    </body>
</html>