<%-- 
    Document   : jsp2
    Created on : 14 mar 2023, 13:12:39
    Author     : Zuñiga Aguilar Saul
--%>

<%@page import="source.Negocio"%>
<%@page import="source.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anónimo">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>JSP2</title>
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
                            <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><!-- Insertar aqui --></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><!-- Insertar aqui --></a>
                        </li>
                <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Practicas
                        </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="jsp1.jsp">Practica 1</a></li>
                        <li><a class="dropdown-item" href="jsp2.jsp">Practica 2</a></li>
                        <!-- <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                    </ul>
                </li>
                    </ul>
                </div>
            </div>
        </nav> <br>
        
        <h1>Mi JSP2</h1>
                <!-- CONTENIDO -->
            <% 
                Negocio negocio = new Negocio();
                int numero = (int)(Math.random()*20);
                String cad = String.format("?numero=%d", numero);
            %>
            <div style="margin-left: 20%">
               <a href="jsp1.jsp<%=cad%>">Ir a JSP1 con n&uacute;mero aleatorio</a> <br>
               <a href="jsp1.jsp">Regresar al JSP1</a>
            </div>

            <!-- TÍTULO -->
            <h1 style="margin-top: 4%">Tabla de calificaciones</h1> <br>

            <!-- CONTENIDO -->

            <table class="table table-light table-sm table-responsive" style="margin-left: 10%; margin-right: 50%">
                <thead>
                    <tr class="table-info">
                        <th scope="col">Nombre</th>
                        <th scope="col">Calificaci&oacute;n</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                <%
                    if(negocio.getLista() != null && ! negocio.getLista().isEmpty())
                    {
                        for(Datos datos : negocio.getLista())
                        {
                %>
                <tr>
                    <td><%=datos.getNombre()%></td>
                    <td><%=datos.getCalf()%></td>
                </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        <button type="bt" class="btn btn-dark"><a href="jsp1.jsp" >Ir al jsp1</a></button>
    </body>
</html>
