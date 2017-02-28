<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModificarSolicitud.aspx.cs" Inherits="JAMARC_2.ModificarSolicitud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-center">
        <div class="text-center">
            <strong>MODIFICACION DE SOLICITUDES</strong><br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [Solicitudes] WHERE ([Estatus] NOT LIKE '%' + @Estatus + '%') ORDER BY [Fecha], [Estatus] DESC" DeleteCommand="DELETE FROM [Solicitudes] WHERE [Ticket] = @Ticket" InsertCommand="INSERT INTO [Solicitudes] ([Fecha], [Usuario], [Departamento], [Tipo_Servicio], [Detalle], [Prioridad], [Experto], [Entrega_aprox], [Estatus]) VALUES (@Fecha, @Usuario, @Departamento, @Tipo_Servicio, @Detalle, @Prioridad, @Experto, @Entrega_aprox, @Estatus)" UpdateCommand="UPDATE [Solicitudes] SET [Fecha] = @Fecha, [Usuario] = @Usuario, [Departamento] = @Departamento, [Tipo_Servicio] = @Tipo_Servicio, [Detalle] = @Detalle, [Prioridad] = @Prioridad, [Experto] = @Experto, [Entrega_aprox] = @Entrega_aprox, [Estatus] = @Estatus WHERE [Ticket] = @Ticket">
            <DeleteParameters>
                <asp:Parameter Name="Ticket" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="Fecha" />
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Departamento" Type="String" />
                <asp:Parameter Name="Tipo_Servicio" Type="String" />
                <asp:Parameter Name="Detalle" Type="String" />
                <asp:Parameter Name="Prioridad" Type="String" />
                <asp:Parameter Name="Experto" Type="String" />
                <asp:Parameter DbType="Date" Name="Entrega_aprox" />
                <asp:Parameter Name="Estatus" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="Cerrado" Name="Estatus" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Fecha" />
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Departamento" Type="String" />
                <asp:Parameter Name="Tipo_Servicio" Type="String" />
                <asp:Parameter Name="Detalle" Type="String" />
                <asp:Parameter Name="Prioridad" Type="String" />
                <asp:Parameter Name="Experto" Type="String" />
                <asp:Parameter DbType="Date" Name="Entrega_aprox" />
                <asp:Parameter Name="Estatus" Type="String" />
                <asp:Parameter Name="Ticket" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Ticket" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Ticket" HeaderText="Ticket" InsertVisible="False" ReadOnly="True" SortExpression="Ticket" />
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
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </p>
    <p>
    </p>
</asp:Content>
