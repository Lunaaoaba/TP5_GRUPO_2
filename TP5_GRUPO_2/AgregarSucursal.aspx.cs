using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_2
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        private string consulta; 
        public BD_Sucursal Sucursal = new BD_Sucursal();
        private int Filasafectadas;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                consulta = "SELECT * FROM Provincia";
                Sucursal.Cargar_Base_De_Datos_DropDownLits(consulta, ddlProvincia, "DescripcionProvincia", "Id_Provincia");
            }

        }

        protected void btnaceptar_Click(object sender, EventArgs e)
        {

            consulta = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES ('" + txtNombreSucursal.Text + "', '" + txtDescripcion.Text + "', " + ddlProvincia.SelectedValue + ", '" + txtDireccion.Text + "')";
            Filasafectadas = Sucursal.Agregar_Base_De_Datos(consulta);
            Mensaje(Filasafectadas);
            LimpiarCampos();

        }

        private void Mensaje(int Filas)
        {
            if(Filas == 1)
            {
                lblMensaje.Text = "LA SUCURSAL SE HA AGREGADO CON EXITO";
            }
            else
            {
                lblMensaje.Text = "LA SUCURSAL NO SE PUDO AGREGAR, INTENTE DE NUEVO PORFAVOR!!!";
            }
        }

        private void LimpiarCampos()
        {
            txtDescripcion.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtNombreSucursal.Text = string.Empty;
            ddlProvincia.SelectedIndex = 0;
        }
    }
}