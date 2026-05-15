using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;


namespace TP5_GRUPO_2
{
    public class BD_Sucursal
    {
        private const string conexionBBD = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

        public int Agregar_Base_De_Datos(string consulta)
        {
            try
            {
                SqlConnection conexion = new SqlConnection(conexionBBD);
                conexion.Open();

                SqlCommand comando = new SqlCommand(consulta, conexion);
                int filasAfectadas = comando.ExecuteNonQuery();

                conexion.Close();

                return filasAfectadas;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Cargar_Base_De_Datos_DropDownLits(string consulta, DropDownList ddlProvincia, string item, string value)
        {
            SqlConnection Conexion = new SqlConnection(conexionBBD);
            Conexion.Open();
           
            SqlCommand Comando = new SqlCommand(consulta, Conexion);
            SqlDataReader Lectura = Comando.ExecuteReader();

            ddlProvincia.Items.Add(new ListItem("--Seleccionar--", "0"));
            while (Lectura.Read())
            {
                ddlProvincia.Items.Add(new ListItem(Lectura[item].ToString(), Lectura[value].ToString()));
            }

            Conexion.Close();
        }

        public void Cargar_Base_De_Datos_GridView(string consulta, GridView gvsucursal)
        {
            SqlConnection conexion = new SqlConnection(conexionBBD);
            conexion.Open();

            SqlCommand comando = new SqlCommand(consulta, conexion);

            SqlDataReader lectura = comando.ExecuteReader();

            gvsucursal.DataSource = lectura;
            gvsucursal.DataBind();

            lectura.Close();
            conexion.Close();
        }
    }
}