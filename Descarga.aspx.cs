using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReachSystem
{
    public partial class Descarga : System.Web.UI.Page
    {
        string IDIOMA ="";
        string CLASE = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["nombreC"] != null)
            {
                clientefactura.Text = Request.Cookies["nombreC"].Value;
            }
            else
            {
                clientefactura.Text = "GUEST"; 
            }
            
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if(check.Checked == true)
            {
                CLASE = "CLP";
            }
            else
            {
                if (pickup.Checked == true)
                {
                    CLASE = "GLP";
                }
                else
                {
                    CLASE = "CCR";
                }
            }
            if (pagomivil1.Checked == true)
            {
                IDIOMA = "Bulgarian";
            }
            else
            {
                if (zelle1.Checked == true)
                {
                    IDIOMA = "Dansk";
                }
                else
                {
                    if (paypal1.Checked == true)
                    {
                        IDIOMA = "Eesti keel";
                    }
                    else
                    {
                        if (efectivo1.Checked == true)
                        {
                            IDIOMA = "English";
                        }
                        else
                        {
                            if (Radio2.Checked == true)
                            {
                                IDIOMA = "Español";
                            }
                            else
                            {
                                if (Radio3.Checked == true)
                                {
                                    IDIOMA = "Français";
                                }
                                else
                                {
                                    if (Radio4.Checked == true)
                                    {
                                        IDIOMA = "Deutsch";
                                    }
                                    else
                                    {
                                        if (Radio5.Checked == true)
                                        {
                                            IDIOMA = "Gaeilge";
                                        }
                                        else
                                        {
                                            if (Radio6.Checked == true)
                                            {
                                                IDIOMA = "Greek";
                                            }
                                            else
                                            {
                                                if (Radio7.Checked == true)
                                                {
                                                    IDIOMA = "Hrvatski Jezik";
                                                }
                                                else
                                                {
                                                    if (Radio8.Checked == true)
                                                    {
                                                        IDIOMA = "Latviešu";
                                                    }
                                                    else
                                                    {
                                                        if (Radio24.Checked == true)
                                                        {
                                                            IDIOMA = "Italiano";
                                                        }
                                                        else
                                                        {
                                                            if (Radio9.Checked == true)
                                                            {
                                                                IDIOMA = "Lietuvių";
                                                            }
                                                            else
                                                            {
                                                                if (Radio10.Checked == true)
                                                                {
                                                                    IDIOMA = "Magyar";
                                                                }
                                                                else
                                                                {
                                                                    if (Radio11.Checked == true)
                                                                    {
                                                                        IDIOMA = "Malti";
                                                                    }
                                                                    else
                                                                    {
                                                                        if (Radio12.Checked == true)
                                                                        {
                                                                            IDIOMA = "Nederlands";
                                                                        }
                                                                        else
                                                                        {
                                                                            if (Radio13.Checked == true)
                                                                            {
                                                                                IDIOMA = "Norsk";
                                                                            }
                                                                            else
                                                                            {
                                                                                if (Radio14.Checked == true)
                                                                                {
                                                                                    IDIOMA = "Polski";
                                                                                }
                                                                                else
                                                                                {
                                                                                    if (Radio15.Checked == true)
                                                                                    {
                                                                                        IDIOMA = "Português";
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if (Radio16.Checked == true)
                                                                                        {
                                                                                            IDIOMA = "Română";
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if (Radio17.Checked == true)
                                                                                            {
                                                                                                IDIOMA = "Russian";
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if (Radio18.Checked == true)
                                                                                                {
                                                                                                    IDIOMA = "Slovenčina";
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if (Radio19.Checked == true)
                                                                                                    {
                                                                                                        IDIOMA = "Slovenščina";
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if (Radio20.Checked == true)
                                                                                                        {
                                                                                                            IDIOMA = "Suomi";
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if (Radio21.Checked == true)
                                                                                                            {
                                                                                                                IDIOMA = "Svenska";
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if (Radio22.Checked == true)
                                                                                                                {
                                                                                                                    IDIOMA = "Türkçe";
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if (Radio23.Checked == true)
                                                                                                                    {
                                                                                                                        IDIOMA = "Čeština";
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if (Radio28.Checked == true)
                                                                                                                        {
                                                                                                                            IDIOMA = "English";
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            if (Radio29.Checked == true)
                                                                                                                            {
                                                                                                                                IDIOMA = "Español";
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if (Radio25.Checked == true)
                                                                                                                                {
                                                                                                                                    IDIOMA = "English";
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if (Radio26.Checked == true)
                                                                                                                                    {
                                                                                                                                        IDIOMA = "Español";
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        IDIOMA = "Français";
                                                                                                                                    }

                                                                                                                                }

                                                                                                                            }

                                                                                                                        }

                                                                                                                    }

                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (IDIOMA == "" ^ CLASE == "")
            {
                Response.Write("<script>alert('SELECCIONE EL IDIOMA')</script>");
            }
            else
            {
                HttpCookie paramunoS = new HttpCookie("paramunoC");
                paramunoS.Value = IDIOMA;
                paramunoS.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(paramunoS);

                HttpCookie paramdosS = new HttpCookie("paramdosC");
                paramdosS.Value = CLASE;
                paramdosS.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(paramdosS);

                HttpCookie paramtresS = new HttpCookie("paramtresC");
                paramtresS.Value = Correo.Value;
                paramtresS.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(paramtresS);
                Response.Redirect("DescargaDos.aspx");
            }
        }

    }
    
}