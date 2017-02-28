<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Activas.aspx.cs" Inherits="JAMARC_2.Activas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            text-decoration: underline;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            margin-left: 57px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <strong>REGISTRO DE SOLICITUDES ACTIVAS</strong></p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [Activas]"></asp:SqlDataSource>
    <div class="auto-style3">
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Ticket" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowSorting="True" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Ticket" HeaderText="Ticket" InsertVisible="False" ReadOnly="True" SortExpression="Ticket" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                <asp:BoundField DataField="Tipo_Servicio" HeaderText="Tipo_Servicio" SortExpression="Tipo_Servicio" />
                <asp:BoundField DataField="Experto" HeaderText="Experto" SortExpression="Experto" />
                <asp:BoundField DataField="Entrega_aprox" HeaderText="Entrega_aprox" SortExpression="Entrega_aprox" />
                <asp:BoundField DataField="Estatus" HeaderText="Estatus" SortExpression="Estatus" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
