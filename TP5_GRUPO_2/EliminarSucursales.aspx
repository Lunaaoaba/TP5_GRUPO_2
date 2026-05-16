<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="TP5_GRUPO_2.EliminarSucursales" %>

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
.compacto td {
    padding: 3px 8px;
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

.Titulo{
    font-size: 42px;
    font-weight: bold;
    color: white;
    background: linear-gradient(90deg, #1b49d4, #27c6ff);
    padding: 18px 35px;
    border-left: 8px solid #8ffcff;
    border-radius: 12px;
    width: fit-content;
}

.Subtitulo{
    font-size: 28px;
    font-weight: bold;
    color: white;
    background: linear-gradient(90deg, #1d3f91, #2f6fff);
    padding: 10px 20px;
    border-left: 6px solid #7ec8ff;
    border-radius: 8px;
    margin: 0;
}
.Sub2 {
    font-size: 20px;
    font-weight: bold;
    color: white;
    background: linear-gradient(90deg, #1d3f91, #2f6fff);
    padding: 10px 20px;
    border-left: 6px solid #7ec8ff;
    border-radius: 8px;
    margin: 0;
}
.tb_style {
    padding: 10px 14px;
    font-size: 20px;
    color: #243b55;
    border: 2px solid #8ab1e6;
    border-radius: 8px;
    background-color: #f7faff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
    width: 50px;
}

.tb_style:focus {
    border-color: #2f6fff;
    box-shadow: 0 0 8px rgba(47, 111, 255, 0.4);
    background-color: #ffffff;
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
                            <u><asp:HyperLink ID="ESucursal" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink></u></td>
                    </tr>
                </table>
            </div>
            <h3 class ="Titulo"> Eliminar Sucursal</h3>
        </div>
        <div>
            <table class="compacto">
                <tr>
                    <td>
                        <h3 class="Sub2">Ingresar ID Sucursal</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEliminar" CssClass="tb_style" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
