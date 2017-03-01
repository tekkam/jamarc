<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Historico.aspx.cs" Inherits="JAMARC_2.Historico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            text-decoration: underline;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            margin-left: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <strong>CONSULTA AL REGISTRO DE SOLICITUDES</strong><o:p></o:p></p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [Solicitudes]"></asp:SqlDataSource>
    <div class="auto-style3">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ticket" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowSorting="True">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Ticket" HeaderText="Ticket" SortExpression="Ticket" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                <asp:BoundField DataField="Tipo_Servicio" HeaderText="Tipo_Servicio" SortExpression="Tipo_Servicio" />
                <asp:BoundField DataField="Detalle" HeaderText="Detalle" SortExpression="Detalle" />
                <asp:BoundField DataField="Prioridad" HeaderText="Prioridad" SortExpression="Prioridad" />
                <asp:BoundField DataField="Experto" HeaderText="Experto" SortExpression="Experto" />
                <asp:BoundField DataField="Entrega_aprox" HeaderText="Entrega_aprox" SortExpression="Entrega_aprox" />
                <asp:BoundField DataField="Estatus" HeaderText="Estatus" SortExpression="Estatus" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
</asp:Content>
