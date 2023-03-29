<%-- 
    Document   : jsp1
    Created on : 9 mar 2023, 13:10:58
    Author     : Zuñiga Aguilar Saul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="barraNav.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anónimo">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>JSP1</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    
    <body>
        <h1>N&uacute;meros Aleatorios</h1>
        <h3>Cantidad de n&uacute;meros:</h3>
        <h2><%=request.getParameter("numero") == null? "Sin dato" : request.getParameter("numero") %></h2>
        <h3 style="margin-top: 4%; margin-left: 10%">N&uacute;meros generados</h3> <br>
        <%
        if(request.getParameter("numero") != null) {
            int arreglito[] = new int[Integer. parseInt(request. getParameter("numero"))];

            for (int i = 0; i < Integer. parseInt(request. getParameter("numero")); i++) {
                arreglito[i]= (int)((Math.random())*200);
                if(arreglito[i] > 50){ 
        %>
            <div class="container">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-start">
                            <div class="col">
                                <h3 class="text-success"><%=arreglito[i] + " "%>es mayor o igual a 50</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <br>
        <%
            }
            else{
        %>
            <div class="container">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-start">
                            <div class="col">
                                <h3 class="text-success"><%=arreglito[i] + " "%>es menor a 50</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <br>
        <%
                }
            }
        }
            else{

        %>
            <div class="container">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-start">
                            <div class="col">
                                <h3 class="text-primary">Los n&uacute;meros aparecer&aacute;n aqu&iacute;</h3>
                            </div>
        <%
            }
        %>
                    </div>
                </div>
            </div>
        </div>
        <button type="button" class="btn btn-dark"><a href="jsp2.jsp" >Ir al jsp2</a></button>
    </body>
</html>