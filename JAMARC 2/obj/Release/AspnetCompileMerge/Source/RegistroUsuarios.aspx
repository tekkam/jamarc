<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="JAMARC_2.RegistroUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: medium;
        }
        .auto-style4 {
            margin-left: 80px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <strong>REGISTRO NUEVO USUARIO AFECTADO</strong></p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style3">
        <strong>DATOS DEL USUARIO:</strong></p>
    <p class="auto-style1">
        <strong>NOMBRE:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <strong>DEPARTAMENTO:</strong>&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <strong>TELEFONO:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <strong>EMAIL:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <div class="auto-style4">
        <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="GUARDAR" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BorrarButton" runat="server" OnClick="BorrarButton_Click" Text="BORRAR" />
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
    <div class="auto-style1">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Status:"></asp:Label>
    </div>
</asp:Content>
