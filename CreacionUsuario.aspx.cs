using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace ReachSystem
{
    public partial class CreacionUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Contraseña.Value.ToString() != null)
            {
                string body = "<body>" +
                    "<h1>WELCOME TO OUR SYSTEM</h1>" +
                    "</body>";
                SmtpClient smtp = new SmtpClient();
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("vdevalenciano@gmail.com", "vdv123vdv");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;



                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("proyectoojcpl@gmail.com", "Tarrago Brands International");
                mail.To.Add(new MailAddress("" + Correo.Value.ToString() + ""));
                mail.Subject = "Welcome to Tarrago Brands International";
                mail.IsBodyHtml = true;
                mail.Body = body;

                smtp.Send(mail);

                using (SqlConnection openCon = new SqlConnection("workstation id=tarragobrands.mssql.somee.com;packet size=4096;user id=tarragobrands_SQLLogin_1;pwd=mjmdlqn93g;data source=tarragobrands.mssql.somee.com;persist security info=False;initial catalog=tarragobrands"))
                {
                    string saveStaff = "INSERT into Usuario (Nombre, Email, FechaCreacion, Empresa, Telefono, Direccion, Perfil, Idioma, Pais, IdiomaOrig, EmpresaOrig, Pass, Status) VALUES (@Nombre, @Email, @FechaCreacion, @Empresa, @Telefono, @Direccion, @Perfil, @Idioma, @Pais, @IdiomaOrig, @EmpresaOrig, @Pass, @Status)";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = ""+Nombre.Value.ToString()+" "+Text2.Value.ToString()+"";
                        querySaveStaff.Parameters.Add("@Email", SqlDbType.VarChar).Value = Correo.Value.ToString();
                        querySaveStaff.Parameters.Add("@FechaCreacion", SqlDbType.DateTime).Value = DateTime.Now;
                        querySaveStaff.Parameters.Add("@Empresa", SqlDbType.VarChar).Value = Apellido.Value.ToString();
                        querySaveStaff.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = "";/* Telefono.Value.ToString();*/
                        querySaveStaff.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = "";/*Dirección.Value.ToString();*/
                        querySaveStaff.Parameters.Add("@Perfil", SqlDbType.VarChar).Value = DropDownList4.SelectedValue.ToString();
                        querySaveStaff.Parameters.Add("@Idioma", SqlDbType.VarChar).Value = "";/* DropDownList1.SelectedValue.ToString();*/
                        querySaveStaff.Parameters.Add("@Pais", SqlDbType.VarChar).Value = DropDownList2.SelectedValue.ToString();
                        querySaveStaff.Parameters.Add("@IdiomaOrig", SqlDbType.VarChar).Value = "";/* DropDownList3.SelectedValue.ToString();*/
                        querySaveStaff.Parameters.Add("@EmpresaOrig", SqlDbType.VarChar).Value = "";/* Text1.Value.ToString();*/
                        querySaveStaff.Parameters.Add("@Pass", SqlDbType.VarChar).Value = Contraseña.Value.ToString();
                        querySaveStaff.Parameters.Add("@Status", SqlDbType.VarChar).Value = "APROBADO";
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            Response.Write("<script>alert('USUARIO REGISTRADO')</script>");
                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }
                }

            }
            else
            {
                Response.Write("<script>alert('LAS CONTRASEÑAS NO COINCIDEN')</script>");
            }

        }
    }
}
