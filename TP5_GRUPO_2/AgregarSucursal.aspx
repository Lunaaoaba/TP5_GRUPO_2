<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url('img/fondo2.png');
            background-position: center;
            background-repeat: no-repeat;
        }
        
        #contenedor {
            display: flex;
            flex-direction: column;
        }

        .centrar {
            justify-content: center;
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

        td{
            padding: 8px; 
            color: #243b55;
            font-weight: bold;
        }
        input[type=text] {
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
            line-height: 1.2;
        }
        .auto-style1 {
            width: 242px;
        }
        .auto-style2 {
            width: 242px;
            height: 68px;
        }
        .auto-style3 {
            height: 68px;
            width: 128px;
        }
        .auto-style4 {
            width: 128px;
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
                        <td style="padding-right: 60px">
                            <u><asp:HyperLink ID="ASucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink></u></td>
                        <td style="padding-right: 60px">
                            <u><asp:HyperLink ID="LSucursal" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink></u></td>
                        <td>
                            <u><asp:HyperLink ID="ESucursal" runat="server">Eliminar Sucursal</asp:HyperLink></u></td>
                    </tr>
                </table>
            </div>
            <div>
                <h1 class="Titulo">GRUPO N°2</h1>
                <table class="cuadro">
                    <tr>
                        <td class="auto-style1"><h2>Agregar Sucursal</h2></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 48px" class="auto-style2"><h3>Nombre Sucursal:</h3></td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtNombreSucursal" runat="server" MaxLength="50" style="margin-top: 15px;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Ingresar un nombre." CssClass="errorNombre"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Ingrese carácteres válidos" ValidationExpression="^[a-zA-Z0-9\s]+$" CssClass="errorNombre"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 48px" class="auto-style2"><h3>Descripción:</h3></td>
                        <td class="auto-style3"><asp:TextBox ID="txtDescripcion" runat="server" Height="16px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" CssClass="errorNombre" ErrorMessage="Ingrese una Descripcion" Height="16px" Width="132px" ControlToValidate="txtDescripcion"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorDescripcion" runat="server" CssClass="errorNombre" ErrorMessage="Ingrese Carácteres Válidos" Height="10px" ValidationExpression="^[a-zA-Z0-9\s]+$" ControlToValidate="txtDescripcion"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 48px" class="auto-style1"><h3>Provincia:</h3></td>
                        <td class="auto-style4"> <asp:DropDownList ID="ddlProvincia" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" CssClass="errorNombre" ErrorMessage="Seleccione una Provincia" InitialValue="0"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 48px" class="auto-style1"><h3>Dirección:</h3></td>
                        <td class="auto-style4"><asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" CssClass="errorNombre" ControlToValidate="txtDireccion" ErrorMessage="Ingrese una Direccion"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revDireccion" runat="server" ControlToValidate="txtDireccion" CssClass="errorNombre" ErrorMessage="Ingrese Carácteres Validos" ValidationExpression="^[a-zA-Z0-9\s]+$"></asp:RegularExpressionValidator>
                        </td>
                   </tr>
                    <tr>
                        <td style="padding-left: 48px" class="auto-style1"></td>
                        <td class="auto-style4">
                            <asp:Button ID="btnaceptar" runat="server" Text="Aceptar" OnClick="btnaceptar_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                        </td>
                    </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
