using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP5_GRUPO_2
{
    public class Clases
    {
        const string conexionBBD = @"Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security = True";

        public string CargarBBD()
        {
            return conexionBBD;
        }

    }
}