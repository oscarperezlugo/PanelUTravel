using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReachSystem
{
    public partial class DescargaDos : System.Web.UI.Page
    {
        string CLASE;
        string IDIOMA;
        string NOMBRE;

        protected void Page_Load(object sender, EventArgs e)
        {
            IDIOMA = Request.Cookies["paramunoC"].Value;
            CLASE = Request.Cookies["paramdosC"].Value;
            NOMBRE = Request.Cookies["paramtresC"].Value;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = GridView1.SelectedIndex;
            using (SqlConnection openCon = new SqlConnection("workstation id=tarragobrands.mssql.somee.com;packet size=4096;user id=tarragobrands_SQLLogin_1;pwd=mjmdlqn93g;data source=tarragobrands.mssql.somee.com;persist security info=False;initial catalog=tarragobrands"))
            {
                string saveStaff = "SELECT Archivo FROM Productos WHERE Idioma=@Idioma AND Clase=@Clase AND Nombre=@Nombre";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@Idioma", SqlDbType.VarChar).Value = IDIOMA;
                    querySaveStaff.Parameters.Add("@Clase", SqlDbType.VarChar).Value = CLASE;
                    querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = GridView1.Rows[i].Cells[0].Text;

                    try
                    {
                        openCon.Open();
                        using (SqlDataReader dr = querySaveStaff.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                string archivo = dr.GetFieldValue<string>(0);
                                var transporte = Convert.FromBase64String(archivo);                                
                                Response.Clear();
                                Response.ClearHeaders();
                                Response.ContentType = "application/pdf";
                                Response.AddHeader("content-disposition", "attachment; filename=" + ""+IDIOMA+" "+CLASE+" "+GridView1.Rows[0].Cells[0].Text+".pdf");
                                Response.BufferOutput = true; ;
                                Response.OutputStream.Write(transporte, 0, transporte.Length);                                
                                Response.End();
                                
                            }
                            else
                            {                                

                            }

                            dr.Close();
                        }
                        openCon.Close();
                        
                        
                    }
                    catch (SqlException ex)
                    {
                        Response.Write("Error" + ex);
                    }
                }
            }
            
        }
        
        
    }
    
}