﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Solicitudes.aspx.cs" Inherits="JAMARC_2.Solicitudes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="section text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">

            <p class="auto-style1">
                <strong>REGISTRO DE INCIDENTES</strong></p>
            <p class="auto-style12">
                <strong>Por favor facilite los siguientes datos:</strong></p>
            <p class="auto-style12">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Usuario afectado:</strong>&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="160px">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Solicitar Usuario" Width="109px" />
            </p>
                            <p class="auto-style12">
                <strong>Departamento:&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </strong>
            </p>
            <p class="auto-style12">
                <strong>Tipo de servicio:</strong>&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>----</asp:ListItem>
                    <asp:ListItem>Instalacion de Red</asp:ListItem>
                    <asp:ListItem>Ensamblado de PCs</asp:ListItem>
                    <asp:ListItem>Reparacion de Equipos</asp:ListItem>
                    <asp:ListItem>Diseño Web</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p class="auto-style12">
                <strong>Otro tipo de servicio:&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </strong></p>
            <p class="auto-style12">
                <strong>Detalles del servicio solicitado:</strong></p>
            <p class="auto-style25">
            <asp:TextBox ID="TextBox1" runat="server" Height="42px" TextMode="MultiLine" Width="338px" CssClass="auto-style27"></asp:TextBox>
            </p>
            <p class="auto-style14">
                <strong>Prioridad del servicio:</strong></p>
            <p class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="container-fluid" BorderStyle="None">
                <asp:ListItem>Baja</asp:ListItem>
                <asp:ListItem>Media</asp:ListItem>
                <asp:ListItem>Alta</asp:ListItem>
                <asp:ListItem>Urgente</asp:ListItem>
            </asp:RadioButtonList>
            </p>
            <p class="auto-style17">
                <strong>Experto a brindar el servicio:</strong></p>
            <p class="auto-style18">
    <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList>
                            </p>
                            <p class="auto-style18">
                <strong>Fecha de entrega aproximada:</strong></p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Calendar ID="Calendar1" runat="server" CssClass="container-fluid" Height="164px" Width="333px" BorderStyle="None" BorderWidth="0px" CellSpacing="2"></asp:Calendar>
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
        </div>
</div>
                </div>
            </div>
        </div>
</asp:Content>
