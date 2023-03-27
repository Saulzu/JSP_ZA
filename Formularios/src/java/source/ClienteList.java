/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package source;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alumnoh
 */
/**@WebServlet(name = "ClienteList", urlPatterns = {"/ClienteList"})*/
public class ClienteList extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            int i = 0;
            List<cliente> clientes = null;
            HttpSession session = null;
            
            session = request.getSession( );
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
            out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
            out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anónimo\">");
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>");
            out.println("<title>Servlet ClienteList</title>");    
            
            /**out.println("<script>");
            out.println("function eliminarCliente(idCliente) {");
            out.println("if (confirm(\"¿Está seguro de que desea eliminar este cliente?\")) {");
            out.println("var xhr = new XMLHttpRequest();");
            out.println(" xhr.open(\"DELETE\", \"ClienteList?id=\" + idCliente, true);");
            out.println(" xhr.onreadystatechange = function() {");
            out.println("if (xhr.readyState == 4 && xhr.status == 200) {");
            out.println("}");
            out.println("};");
            out.println("xhr.send();");
            out.println("}");
            out.println("}");
            out.println("</script>");*/
            
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">");
            out.println("</head>");
            out.println("<body>");
            out.println("<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">");
            out.println("<div class=\"container-fluid\">");
            out.println("<a class=\"navbar-brand\" href=\"index.html\">Inicio</a>");
            out.println("<button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
            out.println("<span class=\"navbar-toggler-icon\"></span>");
            out.println("</button>");
            out.println("<div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">");
            out.println("<ul class=\"navbar-nav\">");
            out.println("<li class=\"nav-item\">");
            out.println("<a class=\"nav-link active\" aria-current=\"page\" href=\"index.html\">Home</a>");
            out.println("</li>");
            out.println("<li class=\"nav-item\">");
            out.println("<a class=\"nav-link\" href=\"ClienteList\">Tabla</a>");
            out.println("</li>");
            out.println("<li class=\"nav-item dropdown\">");
            out.println("<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">");
            out.println("Practicas");
            out.println("</a>");
            out.println("<ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">");
            out.println("<li><a class=\"dropdown-item\" href=\"jsp1.jsp\">Practica 1</a></li>");
            out.println("<li><a class=\"dropdown-item\" href=\"jsp2.jsp\">Practica 2</a></li>");
            out.println("<li><a class=\"dropdown-item\" href=\"AgregaCliente\">Practica 3</a></li>");
            out.println("</ul>");
            out.println("</li>");
            out.println("</ul>");
            out.println("</div>");
            out.println("</div>");
            out.println("</nav> <br>");
            
            out.println("<table border=\"1\">");
            out.println("<tr>");
            out.println("<td>Nombre</td>");
            out.println("<td>Apellido Paterno</td>");
            out.println("<td>Apellido Materno</td>");
            out.println("<td>Edad</td>");
            out.println("<td>Acciones</td>");
            out.println("</tr>");
            
            clientes = (List<cliente>) session.getAttribute("clientes" );
            if( clientes != null && !clientes.isEmpty())
            {
                for( cliente cliente : clientes )
                {
                    out.println("<tr>");
                    out.println( String.format( "<td>%s</td>" , cliente.getNombre() ) );
                    out.println( String.format( "<td>%s</td>" , cliente.getApellidoP() ) );
                    out.println( String.format( "<td>%s</td>" , cliente.getApellidoM() ) );
                    out.println( String.format( "<td>%d</td>" , cliente.getEdad() ) );
                    //*out.println("<td><button onclick=\"eliminarCliente(${cliente.id})\">Eliminar</button></td>");*/
                    out.println("</tr>");
                }
            }
            out.println("</table>");
            out.println("<div class=\"container mt-3\"><a href=\"AgregaCliente\" class=\"btn btn-success\">Nuevo cliente</a> </div>");
            
            if(clientes != null ){
                out.println("<form id=\"form2\" method=\"post\" action=\"ClienteList\">");
                out.println("<label for=\"borrar\">Nombre del cliente a borrar:</label>");
                out.println("<input type=\"text\" name=\"borrar\" id=\"borrar\">");
                out.println("<button type=\"submit\">Eliminar</button>");
                out.println(" </form>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    /**@Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<cliente> clientes = (List<cliente>) session.getAttribute("clientes");
        String id = request.getParameter("id");
        for (cliente cliente : clientes) {
            if (cliente.getNombre().equals(id)) {
                clientes.remove(cliente);
                break;
            }
        }
        session.setAttribute("clientes", clientes);
        response.sendRedirect(request.getContextPath() + "/ClienteList");
    }*/

    
}