<%-- 
    Document   : jsp3.jsp
    Created on : 16 mar 2023, 21:09:53
    Author     : Zuñiga Aguilar Saul
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="source.Datos"%>
<jsp:include page="barraNav.jsp"/>
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
        
        <%
            String nombre = null;
            String direc = null;
            String boleta = null;
            String grupo = null;
            String telefono = null;
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
            direc = request.getParameter( "direc" );
            boleta = request.getParameter( "boleta" );
            grupo = request.getParameter( "grupo" );
            telefono = request.getParameter( "telefono" );
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
                datos.setDirec(direc);
                datos.setBoleta(boleta);
                datos.setGrupo(grupo);
                datos.setTelefono(telefono);
                datos.setCalf( Float.parseFloat( calif ) ); 
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                }
        %>
        <a href="jsp2.jsp" class="btn btn-success">Ver Tabla</a>
         <%
            }
            if( datos == null )
            {
                datos = new Datos( );
                datos.setNombre( "" );
                datos.setDirec("" );
                datos.setBoleta("" );
                datos.setGrupo("" );
                datos.setTelefono("" );
                datos.setCalf( 0f );

            }
            if( !"Submit".equals( guardar ) && !"Submit".equals( actualizar ) )
            {
        %>  
        <form id="form1" method="POST">
            <table border="1" style="width:60%" align="center">
                <tr>
                    <td><h4>Nombre:</h4></td>
                    <td><input id="nombre" name="nombre" value="<%=datos.getNombre()%>" type="text" style="width:100%"/></td>
                </tr>
                
                <tr>
                    <td><h4>Direcci&oacute;n:</h4></td>
                    <td><input id="direc" name="direc"  value="<%=datos.getDirec()%>" type="text" style="width:100%"/>
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
                    <td><h4>Boleta:</h4></td>
                    <td><input id="boleta" name="boleta"  value="<%=datos.getBoleta()%>" type="text" style="width:100%"/>
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
                    <td><h4>Grupo:</h4></td>
                    <td><input id="grupo" name="grupo"  value="<%=datos.getGrupo()%>" type="text" style="width:100%"/>
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
                    <td><h4>Telefono:</h4></td>
                    <td><input id="telefono" name="telefono"  value="<%=datos.getTelefono()%>" type="text" style="width:100%"/>
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