<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="JAMARC_2.Usuarios" %>
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
        .auto-style4 {
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <span class="auto-style4">USUARIOS REGISTRADOS</span></p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAMARCWebConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]" DeleteCommand="DELETE FROM [Usuarios] WHERE [IdU] = @IdU" InsertCommand="INSERT INTO [Usuarios] ([Usuario], [Departamento], [Telefono], [Email]) VALUES (@Usuario, @Departamento, @Telefono, @Email)" UpdateCommand="UPDATE [Usuarios] SET [Usuario] = @Usuario, [Departamento] = @Departamento, [Telefono] = @Telefono, [Email] = @Email WHERE [IdU] = @IdU">
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
    <div class="auto-style3">
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="IdU" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowSorting="True" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    </div>
</asp:Content>
