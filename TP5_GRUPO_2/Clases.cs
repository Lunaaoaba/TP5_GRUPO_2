using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;


namespace TP5_GRUPO_2
{
    public class Clases
    {
        const string conexionBBD = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

        public string CargarBBD()
        {
            return conexionBBD;
        }

        public void CargarProvincias(DropDownList ddlProvincia)
        {
           SqlConnection sqlConnection = new SqlConnection(conexionBBD);
           sqlConnection.Open();
           
           SqlCommand sqlCommand = new SqlCommand("SELECT Id_provincia, DescripcionProvincia FROM Provincia", sqlConnection);
           SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
           
           ddlProvincia.DataSource = sqlDataReader;
           ddlProvincia.DataTextField = "DescripcionProvincia";
           ddlProvincia.DataValueField = "Id_provincia";
           ddlProvincia.DataBind();
                
            

            
            sqlConnection.Close();
        }

    }
}