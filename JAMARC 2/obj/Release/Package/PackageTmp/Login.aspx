<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JAMARC_2.Login" %>

<!DOCTYPE html>

<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="style_jamarc.css" rel="stylesheet" />
    <link href="style_jamarc.less" rel="stylesheet" />
  </head><body>
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
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Usuario</label>
                </div>
                <div class="col-sm-10">
                  &nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input"></asp:TextBox>
                </div>
              </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Contraseña</label>
                </div>
                <div class="col-sm-10">
                  &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control input" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <div class="checkbox">
                    <label>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Recordarme" CssClass="auto-style1" />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <d                    iv class="col-sm-offset-2 col-sm-10">
<asp:Button ID="Button1" runat="server" CssClass="btn btn-info btn" OnClick="Button1_Click" Text="Acceder" OnCommand="Button1_Command" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-info btn" OnClick="Button2_Click" Text="Limpiar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Introduzca sus datos correctos."></asp:Label>
                </d>
              </div>
          </div>
        </div>
      </div>
  

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [Acceso]"></asp:SqlDataSource>
  </form>

</body></html>
