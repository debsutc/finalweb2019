using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjemploFinal
{
    public partial class estudiante : System.Web.UI.Page
    {
        public D_Estudiante oEstudiante = new D_Estudiante();
        protected void Page_Load(object sender, EventArgs e)
        {
            Init_GRD();
        }

        public void Init_GRD(){
        
            try
            {
                GRD.DataSource = oEstudiante.GetAll("Estudiante_get").Tables[0];
                GRD.DataBind();
            }
            catch (Exception ex){
                Console.WriteLine(ex.Message);
            }
        }

    }
}