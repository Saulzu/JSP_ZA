/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package source;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno
 */
@WebServlet(name = "AgregaCliente", urlPatterns = {"/AgregaCliente"})
public class AgregaCliente extends HttpServlet {

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
        String accion = null;
        try (PrintWriter out = response.getWriter()) 
        {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
            out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
            out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anónimo\">");
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>");
            out.println("<title>Servlet AgregaCliente</title>"); 
            
            out.println("<script>");
            out.println("function redirigir() {");
            out.println("document.forms[\"form1\"].action = \"ClienteList\";");
            out.println("}");
            out.println("</script> ");
            
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
            
            accion = request.getParameter("guardar" );
            if(accion != null && "Guardar".equals(accion) )
            {
                guardaCliente( request );
            }
            else
            {
                imprimirFormulario( out );
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
    public String getServletInfo() 
    {
        return "Short description";
    }

    public void imprimirFormulario( PrintWriter out )
    {
        
        
        out.println("<form id=\"form1\">");
        out.println("<table border=\"1\">");
        out.println("<tr>");
        out.println("<td>Nombre</td><td>");
        out.println("<input id=\"nombre\" name=\"nombre\" type=\"text\" />");
        out.println("</td>");
        out.println("<tr>");
        out.println("<td>Apellido Paterno</td><td>");
        out.println("<input id=\"apellidoP\" name=\"apellidoP\" type=\"text\" />");
        out.println("</td>");
        out.println("<tr>");
        out.println("<td>Apellido Materno</td><td>");
        out.println("<input id=\"apellidoM\" name=\"apellidoM\" type=\"text\" />");
        out.println("</td>");
        out.println("<tr>");
        out.println("<td>Edad</td><td>");
        out.println("<input id=\"edad\" name=\"edad\" type=\"number\" />");
        out.println("</td>");
        out.println("<tr>");
        out.println("<td colspan=\"2\"><input id=\"guardar\" name=\"guardar\" value=\"Guardar\"  type=\"submit\" /></td>");
        out.println("</tr>");
        out.println("</table>");
        out.println("</form>");           
    }

    private void guardaCliente(HttpServletRequest request) 
    {
        Cliente cliente = new Cliente( );
        List<Cliente>list = null;
        cliente.setNombre(request.getParameter("nombre"));
        cliente.setApellidoP(request.getParameter("apellidoP"));
        cliente.setApellidoM(request.getParameter("apellidoM"));
        cliente.setEdad( getCampoInteger( request.getParameter("edad") ) );
        if( cliente.getApellidoM( ) == null || cliente.getApellidoP() == null ||
            cliente.getNombre() == null || cliente.getEdad() == null )
        {
            return;
        }
        list = (List<Cliente>) request.getSession().getAttribute("clientes");
        if( list == null )
        {
            list = new ArrayList<>();
            request.getSession().setAttribute("clientes", list);
        }
        list.add(cliente);
        
        
    }
    
    private Integer getCampoInteger( String parametro )
    {
        try
        {
            return Integer.valueOf(parametro);
        }
        catch(NumberFormatException ex)
        {
            return  null;
        }
    }
}
