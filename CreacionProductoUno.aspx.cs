using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReachSystem
{
    public partial class CreacionProductoUno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string nombre = Nombre.Value.ToString();
            string codigo = Text1.Value.ToString();
            string clase = DropDownList4.SelectedValue.ToString();  
            
            HttpCookie nombreS = new HttpCookie("nombreProdC");
            nombreS.Value = nombre;
            nombreS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(nombreS);

            HttpCookie claseS = new HttpCookie("clasProdC");
            claseS.Value = clase;
            claseS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(claseS);

            HttpCookie codigoS = new HttpCookie("codProdC");
            codigoS.Value = codigo;
            codigoS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(codigoS);

            Response.Redirect("CreacionProductoDos.aspx");
        }
    }
}
