using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReachSystem
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                GridView2.Attributes.Add("style", "display:none");
            }
            else
            {
                GridView1.Attributes.Add("style", "display:none");
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String M;
            int i = GridView1.SelectedIndex;
            int q = GridView2.SelectedIndex;
            if (i >= 0)
            {
                string w = GridView1.Rows[i].Cells[0].Text;
                M = w;
            }
            else
            {
                string w = GridView2.Rows[q].Cells[0].Text;
                M = w;
            }            
            //string nombre = GridView1.Rows[i].Cells[0].Text;            
            HttpCookie nombreS = new HttpCookie("paramcincoC");
            nombreS.Value = M;
            nombreS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(nombreS);            
            Response.Redirect("Detalles.aspx");
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string buscar = Correo.Value;
            HttpCookie buscarS = new HttpCookie("paramcincoC");
            buscarS.Value = buscar;
            buscarS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(buscarS);
            Response.Redirect("Default.aspx");
        }
    }
}