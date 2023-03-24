<%-- 
    Document   : jsp3.jsp
    Created on : 16 mar 2023, 21:09:53
    Author     : Zuñiga Aguilar Saul
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="source.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anónimo">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>JSP3</title>
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
        
        <%
            String nombre = null;
            String calif = null;
            String guardar = null;
            String id = null;
            String editar = null;
            String accion = "guardar";
            String actualizar = "guardar";
            Datos datos = null;
            Integer idx = null;
            List<Datos>lista = null;
            
            session = request.getSession( true );
            if( session != null )
            {
                if( session.getAttribute("lista") == null )
                {
                    session.setAttribute("lista", new ArrayList<Datos>());
                }
                lista = (List)session.getAttribute("lista");
            }
            nombre = request.getParameter( "nombre" );
            calif = request.getParameter( "calif" );
            guardar = request.getParameter( "guardar" );
            id = request.getParameter( "id" );
            editar = request.getParameter( "editar" );
            actualizar = request.getParameter( "actualizar" );
            
            if( "Submit".equals( editar ) )
            {
                idx = Integer.parseInt( id );
                if( idx < lista.size() )
                {
                    datos = lista.get( idx );
                }
                accion = "actualizar";
            }
            
            if( "Submit".equals( guardar ) || "Submit".equals( actualizar ) )
            {
                if( "Submit".equals( guardar ) )
                {
                    datos = new Datos( );
                }
                else
                {
                    datos = lista.get( Integer.parseInt( id ) );
                }
                datos.setNombre(nombre);
                datos.setCalf( Float.parseFloat( calif ) ); 
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                }
        %>
       
         <%
            }
            if( datos == null )
            {
                datos = new Datos( );
                datos.setNombre( "" );
                datos.setCalf( 0f );

            }
            if( !"Submit".equals( guardar ) && !"Submit".equals( actualizar ) )
            {
        %>  
        <form id="form1">
            <table border="1" style="width:60%" align="center">
                <tr>
                    <td><h4>Nombre:</h4></td>
                    <td><input id="nombre" name="nombre" value="<%=datos.getNombre()%>" type="text" style="width:100%"/></td>
                </tr>
                <tr>
                    <td><h4>Calificaci&oacute;n:</h4></td>
                    <td><input id="calif" name="calif"  value="<%=datos.getCalf()%>" type="number" style="width:100%"/>
                        <%
                            if( "Submit".equals( editar ) )
                            {
                        %>
                                <input type="hidden" name="id" id="id" value="<%=id%>" />
                        <%
                            }
                        %>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" id="Guardar"  style="width:20%" name="<%=accion%>"/>
                    </td>
                </tr>
            </table>
        </form>
        <%
            }
        %>
    </body>
</html>