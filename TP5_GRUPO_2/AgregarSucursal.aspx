<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        #contenedor {
            display: flex;
            flex-direction: column;
        }

        .centrar {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 10vh;
            background: deepskyblue;
            border-radius: 20px;
        }

        .izquierda {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding-left: 100px;
        }

        .Titulo {
            font-family: 'Agency FB', serif;
            color: red;
            background-color: deepskyblue;
            display: inline-block;
            padding: 5px 20px;
        }

        .cuadro {
            background: deepskyblue;
            border-radius: 20px;
            margin: 20px auto;
            padding: 20px;
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
                <table class="cuadro";>
                    <tr>
                        <td><h2>Agregar Sucursal</h2></td>
                    </tr>
                    <tr>
                        <td><h3>Nombre Sucursal:</h3></td>
                        <td><asp:TextBox ID="txtNombreSucursal" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 48px;"><h3>Descripción:</h3></td>
                        <td><asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox></td>
                    </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
