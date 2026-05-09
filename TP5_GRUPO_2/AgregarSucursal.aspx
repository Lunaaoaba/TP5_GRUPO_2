<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

body {
    font-family: Arial, Helvetica, sans-serif;
    background-image: url('img/fondo1.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
}

.centrar {
    background-color: #3f5f8a;
    padding: 12px;
    border-radius: 6px;
    display: flex;
    align-items: center;
    gap: 40px;
}
.centrar a {
    color: white;
    text-decoration: none;
    font-weight: bold;
}

.centrar a:hover {
    color: #bcd4f6;
}
.Titulo {
    font-family: Arial, Helvetica, sans-serif;
    color: white;
    background-color: #2f4f75;

    display: inline-block;

    padding: 10px 20px;
    margin-top: 20px;

    border-radius: 6px;
}
.cuadro {
    background-color: #dfe8f5;

    width: 420px;

    margin: 40px auto;

    padding: 20px;

    border-radius: 6px;
}
table {
    width: 100%;
}

td {
    padding: 8px;
    color: #243b55;
    font-weight: bold;
}
input[type=text] {
    width: 95%;
    padding: 5px;

    border: 1px solid #6c8ebf;
    border-radius: 4px;
}
.errorNombre {
    display: block;
    font-size: 10px;
    color: red;
    margin-top: 2px;
    padding: 0;
    height: auto;
    line-height: 1.2;
}





    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contenedor">
            <div class="centrar">
                <table>
                    <tr>
                        <td style="padding-right: 60px;">
                            <u><asp:HyperLink ID="ASucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink></u></td>
                        <td style="padding-right: 60px;">
                            <u><asp:HyperLink ID="LSucursal" runat="server">Listado de Sucursales</asp:HyperLink></u></td>
                        <td>
                            <u><asp:HyperLink ID="ESucursal" runat="server">Eliminar Sucursal</asp:HyperLink></u></td>
                    </tr>
                </table>
            </div>
            <div>
                <h1 class="Titulo">GRUPO N°2</h1>
                <table class="cuadro";">
                    <tr>
                        <td><h2>Agregar Sucursal</h2></td>
                    </tr>
                    <tr>
                        <td><h3 style="margin-bottom: 27px;">Nombre Sucursal:</h3></td>
                        <td>
                            <asp:TextBox ID="txtNombreSucursal" runat="server" MaxLength="50" style="margin-top: 15px;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Ingresar un nombre." CssClass="errorNombre"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Ingrese carácteres válidos" ValidationExpression="^[a-zA-Z0-9\s]+$" CssClass="errorNombre"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 48px;"><h3>Descripción:</h3></td>
                        <td><asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox></td>
                    </tr>
                    <td style="padding-left: 48px;"><h3>Provincia:</h3></td>
                        <td> <asp:DropDownList ID="ddlProvincia" runat="server"></asp:DropDownList></td>
                    <tr>
                        <td style="padding-left: 48px;"><h3>Dirección:</h3></td>
                        <td><asp:TextBox ID="txtDireccion" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
                   </tr>
                                        </h3></td>
                    <tr>
                        <td style="padding-left: 48px;">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
