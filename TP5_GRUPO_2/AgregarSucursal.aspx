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
        }
        .izquierda {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding-left: 100px; 
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
                            <u><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink></u></td>
                        <td style="padding-right: 60px;">
                            <u><asp:HyperLink ID="HyperLink2" runat="server">Listado de Sucursales</asp:HyperLink></u></td>
                        <td>
                            <u><asp:HyperLink ID="HyperLink3" runat="server">Eliminar Sucursal</asp:HyperLink></u></td>
                    </tr>
                </table>
            </div>
            <div>

            </div>
        </div>
    </form>
</body>
</html>
