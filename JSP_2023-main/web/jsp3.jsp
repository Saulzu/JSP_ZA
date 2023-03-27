<%-- 
    Document   : jsp3
    Created on : 16 mar 2023, 13:04:14
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.gerdoc.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                <h1>EXITO!</h1>
                <script>
                    console.log("Exito");
                </script>
                <a href="jsp2.jsp">Ir a jsp2 </a>
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
            <table border="1">
                <tr>
                    <td>Nombre</td>
                    <td><input id="nombre" name="nombre" value="<%=datos.getNombre()%>" type="text"/></td>

                </tr>
                <tr>
                    <td>Calificación</td>
                    <td><input id="calif" name="calif" value="<%=datos.getCalf()%>" type="number"/>
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
                <tr >
                    <td colspan="2">
                        <input type="submit" id="Guardar" name="<%=accion%>" />
                    </td>
                </tr>
            </table>
        </form>
        <%
            }
        %>
    </body>
</html>
