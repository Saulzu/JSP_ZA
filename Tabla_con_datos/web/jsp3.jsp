<!DOCTYPE html>
<html>
    <head>
        <title>Inicio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <!-- SVG IMPORT -->
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
          <symbol id="nicojrz" viewBox="0 0 118 94">
            <title>Nicojrz</title>
            <path d="M45.13,52.27c5.24,3.04,10.06,5.83,14.87,8.62v17.65c-4.87,2.8-9.78,5.63-14.87,8.56-4.99-2.86-9.98-5.72-15.1-8.67v-17.43c-5.28,3-10.16,5.78-15.21,8.65-4.88-2.8-9.8-5.63-14.82-8.51v-17.71c4.77-2.76,9.59-5.56,14.82-8.59C9.67,31.85,4.87,29.06,0,26.24V8.53C4.88,5.72,9.8,2.9,14.84,0c5.04,2.9,10.02,5.76,15.09,8.67V26.12c5.22-2.98,10.09-5.76,15.19-8.68,4.89,2.81,9.87,5.67,14.87,8.54v17.66c-4.74,2.75-9.57,5.55-14.86,8.63Zm-3.26,29.41v-10.28c-2.85-1.63-5.68-3.26-8.75-5.02v10.28c2.78,1.59,5.6,3.21,8.75,5.01Zm.07-45.13c-2.97-1.68-5.79-3.28-8.83-5.01v10.27c2.91,1.65,5.72,3.25,8.83,5.02v-10.29Zm-15.1,8.75c-2.85-1.63-5.67-3.24-8.79-5.02v10.28c2.87,1.64,5.7,3.25,8.79,5.02v-10.28Zm-23.86,3.73v10.31c2.84,1.61,5.6,3.18,8.57,4.86v-10.27c-2.83-1.62-5.54-3.17-8.57-4.9ZM11.62,19.1c-2.91-1.66-5.67-3.24-8.63-4.94v10.31c2.87,1.63,5.63,3.19,8.63,4.9v-10.26Z"/>
          </symbol>
          <symbol id="twitter" viewBox="0 0 16 16">
            <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
          </symbol>
        </svg>
        
        <!-- NAVEGACI�N -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.html" style="margin-left: 10%">JSP</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="margin-left: 10%">
                    Pr&aacute;cticas
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="jsp1.jsp">Pr&aacute;ctica 1</a></li>
                    <li><a class="dropdown-item" href="jsp2.jsp">Pr&aacute;ctica 2</a></li>
                  </ul>
                </li>
            </div>
          </div>
        </nav>
        
        <!-- T�TULO -->
        <h1 style="margin-top: 4%">Elige una pr&aacute;ctica de JSP</h1>
        
        <!-- CAJAS -->
        <div class="row" style="margin-left: 10%; margin-right: 10%; margin-top: 4%">
          <div class="col-sm-6 mb-3 mb-sm-0">
            <img src="images/dados.png" class="card-img-top" alt="dados">
            <div class="card-body">
              <div class="card-body">
                <h5 class="card-title">Pr&aacute;ctica 1</h5>
                <p class="card-text">Generador de numeros aleatorios</p>
                <a href="jsp1.jsp" class="btn btn-primary">Ver</a>
              </div>
            </div>
          </div>
          <div class="col-sm-6 mb-3 mb-sm-0">
            <img style="width: 90%" src="images/tabla.jpg" class="card-img-top" alt="dados">
            <div class="card-body">
              <div class="card-body">
                <h5 class="card-title">Pr&aacute;ctica 2</h5>
                <p class="card-text">Tabla JSP</p>
                <a href="jsp2.jsp" class="btn btn-primary">Ver</a>
              </div>
            </div>
          </div>
        </div>
        
        <div class="row" style="margin-left: 10%; margin-right: 10%; margin-top: 4%">
          <div class="col-sm-6">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Pr&aacute;ctica 3</h5>
                <p class="card-text">No disponible</p>
                <a href="#" class="btn btn-primary disabled">Ver</a>
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Pr&aacute;ctica 4</h5>
                <p class="card-text">No disponible</p>
                <a href="#" class="btn btn-primary disabled">Ver</a>
              </div>
            </div>
          </div>
        </div>
        
        <!-- FOOTER -->
        <div class="container" style="margin-top: 4%; margin-left: 10%; margin-right: 10%">
          <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
            <div class="col-md-4 d-flex align-items-center">
              <a href="https://github.com/Nicojrz" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
                <svg class="bi" width="30" height="24"><use xlink:href="#nicojrz"/></svg>
              </a>
              <span class="mb-3 mb-md-0 text-muted">&copy; 2023 Nicojrz</span>
            </div>

            <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
              <li class="ms-3"><a class="text-muted" href="https://twitter.com/axlnik_7"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
            </ul>
          </footer>
        </div>
    </body>
</html>