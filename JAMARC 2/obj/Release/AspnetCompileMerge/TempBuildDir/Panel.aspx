<%@ Page Title="JAMARC SERVICE MANAGER" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="JAMARC_2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form id="form1" runat="server">--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [IngresarUsuarios]" DeleteCommand="DELETE FROM [IngresarUsuarios] WHERE [IdU] = @IdU" InsertCommand="INSERT INTO [IngresarUsuarios] ([Usuario], [Departamento], [Telefono], [Email]) VALUES (@Usuario, @Departamento, @Telefono, @Email)" UpdateCommand="UPDATE [IngresarUsuarios] SET [Usuario] = @Usuario, [Departamento] = @Departamento, [Telefono] = @Telefono, [Email] = @Email WHERE [IdU] = @IdU">
        <DeleteParameters>
            <asp:Parameter Name="IdU" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Usuario" Type="String" />
            <asp:Parameter Name="Departamento" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Usuario" Type="String" />
            <asp:Parameter Name="Departamento" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="IdU" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
        <p style="text-align: center">
            <strong>Lista de usuarios que desean registrarse</strong></p>
    <p style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="container-fluid" DataKeyNames="IdU" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="IdU" HeaderText="IdU" InsertVisible="False" ReadOnly="True" SortExpression="IdU" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
    </p>
<%--</form>--%>
</asp:Content>
