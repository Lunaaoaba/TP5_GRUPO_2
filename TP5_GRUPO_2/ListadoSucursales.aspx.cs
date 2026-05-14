using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_2
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        private string consulta; 
        private BD_Sucursal Sucursal = new BD_Sucursal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfiltrar_Click(object sender, EventArgs e)
        {
            consulta = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia, DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia WHERE Id_Sucursal = " + txtIdSucursal.Text;
            Sucursal.Cargar_Base_De_Datos_GridView(consulta, gvsucursal);
        }
    }
}