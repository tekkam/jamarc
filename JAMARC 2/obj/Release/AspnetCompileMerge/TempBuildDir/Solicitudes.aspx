<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Solicitudes.aspx.cs" Inherits="JAMARC_2.Solicitudes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            margin-left: 240px;
        }
        .auto-style12 {
            margin-left: 160px;
        }
        .auto-style25 {
            width: 352px;
            margin-left: 39px;
        }
        .auto-style14 {
            width: 221px;
            margin-left: 164px;
            margin-bottom: 0px;
        }
        .auto-style17 {
            margin-left: 165px;
            width: 257px;
            margin-top: 18px;
            margin-bottom: 6px;
        }
        .auto-style18 {
            margin-left: 159px;
            margin-bottom: 10px;
        }
        .auto-style28 {
            text-align: left;
            margin-left: 160px;
            width: 438px;
            height: 190px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style9 {
            margin-left: 173px;
        }
        .auto-style29 {
             width: 352px;
            margin-left: 279px;
        }
        .auto-style31 {
            margin-left: 165px;
            width: 257px;
            margin-top: 0px;
            margin-bottom: 6px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
    <strong>REGISTRO DE INCIDENTES</strong></p>
<p class="auto-style12">
    <strong>Por favor facilite los siguientes datos:</strong></p>
<p class="auto-style12">
    <strong>Usuario afectado:</strong>&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="160px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Agregar Usuario" Width="109px" />
</p>
<p class="auto-style12">
    <strong>Departamento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="173px"></asp:TextBox>
    </strong>
</p>
<p class="auto-style12">
    <strong>Tipo de servicio:</strong>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>----</asp:ListItem>
        <asp:ListItem>Instalacion de Red</asp:ListItem>
        <asp:ListItem>Ensamblado de PCs</asp:ListItem>
        <asp:ListItem>Reparacion de Equipos</asp:ListItem>
        <asp:ListItem>Diseño Web</asp:ListItem>
    </asp:DropDownList>
</p>
<p class="auto-style12">
    <strong>Otro tipo de servicio:&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </strong>
</p>
<p class="auto-style12">
    <strong>Detalles del servicio solicitado:</strong></p>
<p class="auto-style25">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="center-block" Height="42px" TextMode="MultiLine" Width="338px"></asp:TextBox>
</p>
<p class="auto-style14">
    <strong>Prioridad del servicio:</strong></p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="container-fluid" RepeatDirection="Horizontal">
        <asp:ListItem>Baja</asp:ListItem>
        <asp:ListItem>Media</asp:ListItem>
        <asp:ListItem>Alta</asp:ListItem>
        <asp:ListItem>Urgente</asp:ListItem>
    </asp:RadioButtonList>
<p class="auto-style17">
    <strong>Experto a brindar el servicio:</strong></p>
<p class="auto-style31">
    <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList>
    </p>
<p class="auto-style18">
    &nbsp;</p>
    <p class="auto-style18">
        <strong>Fecha de entrega aproximada:</strong></p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="auto-style28">
    &nbsp;<asp:Calendar ID="Calendar1" runat="server" CssClass="auto-style24" Height="164px" Width="333px"></asp:Calendar>
</div>
&nbsp;<p class="auto-style9">
    <strong>Estatus:</strong></p>
<asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="container-fluid" RepeatDirection="Horizontal" Width="353px">
    <asp:ListItem>En progreso</asp:ListItem>
    <asp:ListItem>Resuelto</asp:ListItem>
    <asp:ListItem>Cerrado</asp:ListItem>
</asp:RadioButtonList>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ENVIAR" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BORRAR" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [Solicitudes]"></asp:SqlDataSource>
<p class="auto-style29">
    <asp:Label ID="Label1" runat="server" Text="Resultado:"></asp:Label>
</p>
</asp:Content>
