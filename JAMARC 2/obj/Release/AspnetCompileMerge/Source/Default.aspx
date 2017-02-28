<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JAMARC_2.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    <title>JAMARC Intro</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="page-header text-warning">
              <h1>JAMARC Service Manager
                <small>by JA.MA.R.C.</small>
              </h1>
            </div>
            <h1 class="text-center">¿Como podemos ayudarle?</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-4 text-center">
            <a href="PeticionesUsuario.aspx"><i class="fa fa-5x fa-edit fa-fw text-success"></i></a>
            <p class="lead">
              <a href="PeticionesUsuario.aspx">Solicitar Servicio<br></a>
            </p>
          </div>
          <div class="col-md-4 text-center">
            <a href="#"><i class="fa fa-5x fa-fw fa-ticket text-info"></i></a>
            <p class="lead">
              <a href="#">Ver Estatus de Ticket sometido<br></a>
            </p>
          </div>
          <div class="col-md-4 text-center">
            <a href="Login.aspx"><i class="fa fa-5x fa-fw fa-wrench text-warning"></i></a><p class="lead"><a href="Login.aspx">Login Expertos<br></a>
          </p></div>
        </div>
      </div>
    </div>
    
  

<footer class="section section-primary">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h3>
                            <i class="fa fa-star fa-fw"></i>JAMARC Service Manager</h3>
                        <p>Proyecto final de programacion 3 de la UNAD, integrado por:
                            <br>Michael Ceballos (Programador en jefe).
                            <br>Jaime Almeyda (Asesor y diseño base de datos)
                            <br>Raisileny Montero (Relacionadora Publica)
                            <br>Carlos Adames (Analista de Sistemas)</p>
                    </div>
                    <div class="col-sm-6">
                        <p class="text-info text-right">
                            <br>Siguenos en nuestas redes sociales:
                            <br>
                        </p>
                        <div class="row">
                            <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 hidden-xs text-right">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
