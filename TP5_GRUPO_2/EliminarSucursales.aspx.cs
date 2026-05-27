using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_2
{
    
    public partial class EliminarSucursales : System.Web.UI.Page
    {
        public BD_Sucursal Sucursal = new BD_Sucursal();
        private int Filasafectadas;
        private string consulta; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            consulta = "DELETE FROM Sucursal WHERE Id_Sucursal = " + txtEliminar.Text;
            Filasafectadas = Sucursal.EliminarSucursal_BD(consulta);
            Mensaje(Filasafectadas);
            txtEliminar.Text = string.Empty;
        }
        private void Mensaje(int Filas)
        {
            lblMensajeExitoso.Text = string.Empty;
            lblMensajeError.Text = string.Empty;

            lblMensajeExitoso.Visible = false;
            lblMensajeError.Visible = false;

            if (Filas == 1)
            {
                lblMensajeExitoso.Text = "LA SUCURSAL SE HA ELIMINADO CON EXITO";
                lblMensajeExitoso.Visible = true;
            }
            else
            {
                lblMensajeError.Text = "LA SUCURSAL NO SE PUDO ELIMINAR, INTENTE DE NUEVO PORFAVOR!!!";
                lblMensajeError.Visible = true;
            }
        }
    }
}