using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;
using DEBSAccesoSQL;

namespace EjemploFinal
{
    public class CAD:DEBSAccesoDatos
    {
        public CAD()
        {
            cConex = "Data Source=USER\\SQLSERVER;Initial Catalog=UniWeb;User=sa;Password=123";
            conexion = new SqlConnection(cConex);
        }

        public DataSet GetAll(String sp)
        {
            DataSet DS = new DataSet();
            try
            {
                SqlCommand cmd = CrearComando(sp);
                DS = GetDS(cmd, sp);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return DS;
        }
    }
}