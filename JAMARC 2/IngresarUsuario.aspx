<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresarUsuario.aspx.cs" Inherits="JAMARC_2.IngresarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="style_jamarc.css" rel="stylesheet" />
    <link href="style_jamarc.less" rel="stylesheet" />
    <title>Solicitar Usuario</title>
</head>
<body>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-header text-center text-warning">
                            <h1>JAMARC Service Manager
                                <small>by JA.MA.R.C.</small>
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
    <form id="form1" runat="server">
    <div>
    
    <p class="auto-style1">
        <strong>SOLICITUD PARA REGISTRARSE COMO USUARIO</strong></p>
    <p class="auto-style3">
        <strong>DATOS DEL USUARIO:</strong></p>
    <p class="auto-style1">
        <strong>NOMBRE:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <strong>DEPARTAMENTO:</strong>&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <strong>TELEFONO:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <strong>EMAIL:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <div class="auto-style4">
        <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="GUARDAR" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BorrarButton" runat="server" OnClick="BorrarButton_Click" Text="BORRAR" />
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [IngresarUsuarios]"></asp:SqlDataSource>
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Status:"></asp:Label>
    
    </div>
    </form>
                    </div>
                </div>
            </div>
        </div>
    

</body>
</html>
