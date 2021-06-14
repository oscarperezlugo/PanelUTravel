using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReachSystem
{
    public partial class Detalles : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = GridView1.SelectedIndex;
            string nombre = GridView1.Rows[i].Cells[0].Text;
            

            HttpCookie nombreS = new HttpCookie("ordenC");
            nombreS.Value = nombre;
            nombreS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(nombreS);

            

            Response.Redirect("CreacionProductoDos.aspx");
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //string buscar = Correo.Value;
            //HttpCookie buscarS = new HttpCookie("paramcincoC");
            //buscarS.Value = buscar;
            //buscarS.Expires = DateTime.Now.AddDays(30);
            //Response.Cookies.Add(buscarS);
            //Response.Redirect("Default.aspx");
        }
    }
}