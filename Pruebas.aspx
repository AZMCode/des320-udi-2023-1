<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pruebas.aspx.cs" Inherits="wfVentas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView runat="server" ID="grdUsuario" AutoGenerateColumns="False" DataKeyNames="idusuario" DataSourceID="srcVentas">
            <Columns>
                <asp:BoundField DataField="idusuario" HeaderText="idusuario" ReadOnly="True" InsertVisible="False" SortExpression="idusuario"></asp:BoundField>
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre"></asp:BoundField>
                <asp:BoundField DataField="tipo_documento" HeaderText="tipo_documento" SortExpression="tipo_documento"></asp:BoundField>
                <asp:BoundField DataField="num_documento" HeaderText="num_documento" SortExpression="num_documento"></asp:BoundField>
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion"></asp:BoundField>
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado"></asp:CheckBoxField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="srcVentas" ConnectionString="<%$ ConnectionStrings:cadenaBdVentas %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
    </form>
</body>
</html>
