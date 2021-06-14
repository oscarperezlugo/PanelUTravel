using ReachSystem.Datos;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReachSystem
{
    public partial class CreacionProductoDos : System.Web.UI.Page
    {
        string NOMBRE;
        string CLASE;
        string CODIGO;
        protected void Page_Load(object sender, EventArgs e)
        {
            NOMBRE = Request.Cookies["nombreProdC"].Value;
            CLASE = Request.Cookies["clasProdC"].Value;
            CODIGO = Request.Cookies["codProdC"].Value;
            if (CLASE == "GLP")
            {
                FileUpload2.Attributes.Add("style", "display:none");
                Label2.Attributes.Add("style", "display:none");

                FileUpload1.Attributes.Add("style", "display:none");
                Label1.Attributes.Add("style", "display:none");

                FileUpload3.Attributes.Add("style", "display:none");
                Label3.Attributes.Add("style", "display:none");

                FileUpload7.Attributes.Add("style", "display:none");
                Label7.Attributes.Add("style", "display:none");

                FileUpload8.Attributes.Add("style", "display:none");
                Label8.Attributes.Add("style", "display:none");

                FileUpload9.Attributes.Add("style", "display:none");
                Label9.Attributes.Add("style", "display:none");

                FileUpload10.Attributes.Add("style", "display:none");
                Label10.Attributes.Add("style", "display:none");

                FileUpload11.Attributes.Add("style", "display:none");
                Label11.Attributes.Add("style", "display:none");

                FileUpload12.Attributes.Add("style", "display:none");
                Label12.Attributes.Add("style", "display:none");

                FileUpload13.Attributes.Add("style", "display:none");
                Label13.Attributes.Add("style", "display:none");

                FileUpload14.Attributes.Add("style", "display:none");
                Label14.Attributes.Add("style", "display:none");

                FileUpload15.Attributes.Add("style", "display:none");
                Label15.Attributes.Add("style", "display:none");

                FileUpload16.Attributes.Add("style", "display:none");
                Label16.Attributes.Add("style", "display:none");

                FileUpload17.Attributes.Add("style", "display:none");
                Label17.Attributes.Add("style", "display:none");

                FileUpload18.Attributes.Add("style", "display:none");
                Label18.Attributes.Add("style", "display:none");

                FileUpload19.Attributes.Add("style", "display:none");
                Label19.Attributes.Add("style", "display:none");

                FileUpload20.Attributes.Add("style", "display:none");
                Label20.Attributes.Add("style", "display:none");

                FileUpload21.Attributes.Add("style", "display:none");
                Label21.Attributes.Add("style", "display:none");

                FileUpload22.Attributes.Add("style", "display:none");
                Label22.Attributes.Add("style", "display:none");

                FileUpload23.Attributes.Add("style", "display:none");
                Label23.Attributes.Add("style", "display:none");

                FileUpload24.Attributes.Add("style", "display:none");
                Label24.Attributes.Add("style", "display:none");

                FileUpload25.Attributes.Add("style", "display:none");
                Label25.Attributes.Add("style", "display:none");

                FileUpload26.Attributes.Add("style", "display:none");
                Label26.Attributes.Add("style", "display:none");

                FileUpload27.Attributes.Add("style", "display:none");
                Label27.Attributes.Add("style", "display:none");

                FileUpload6.Attributes.Add("style", "display:none");
                Label6.Attributes.Add("style", "display:none");
            }
            else if ( CLASE == "CCR")
            {
                FileUpload2.Attributes.Add("style", "display:none");
                Label2.Attributes.Add("style", "display:none");

                FileUpload1.Attributes.Add("style", "display:none");
                Label1.Attributes.Add("style", "display:none");

                FileUpload3.Attributes.Add("style", "display:none");
                Label3.Attributes.Add("style", "display:none");

                FileUpload7.Attributes.Add("style", "display:none");
                Label7.Attributes.Add("style", "display:none");

                FileUpload8.Attributes.Add("style", "display:none");
                Label8.Attributes.Add("style", "display:none");

                FileUpload9.Attributes.Add("style", "display:none");
                Label9.Attributes.Add("style", "display:none");

                FileUpload10.Attributes.Add("style", "display:none");
                Label10.Attributes.Add("style", "display:none");

                FileUpload11.Attributes.Add("style", "display:none");
                Label11.Attributes.Add("style", "display:none");

                FileUpload12.Attributes.Add("style", "display:none");
                Label12.Attributes.Add("style", "display:none");

                FileUpload13.Attributes.Add("style", "display:none");
                Label13.Attributes.Add("style", "display:none");

                FileUpload14.Attributes.Add("style", "display:none");
                Label14.Attributes.Add("style", "display:none");

                FileUpload15.Attributes.Add("style", "display:none");
                Label15.Attributes.Add("style", "display:none");

                FileUpload16.Attributes.Add("style", "display:none");
                Label16.Attributes.Add("style", "display:none");

                FileUpload17.Attributes.Add("style", "display:none");
                Label17.Attributes.Add("style", "display:none");

                FileUpload18.Attributes.Add("style", "display:none");
                Label18.Attributes.Add("style", "display:none");

                FileUpload19.Attributes.Add("style", "display:none");
                Label19.Attributes.Add("style", "display:none");

                FileUpload20.Attributes.Add("style", "display:none");
                Label20.Attributes.Add("style", "display:none");

                FileUpload21.Attributes.Add("style", "display:none");
                Label21.Attributes.Add("style", "display:none");

                FileUpload22.Attributes.Add("style", "display:none");
                Label22.Attributes.Add("style", "display:none");

                FileUpload23.Attributes.Add("style", "display:none");
                Label23.Attributes.Add("style", "display:none");

                FileUpload24.Attributes.Add("style", "display:none");
                Label24.Attributes.Add("style", "display:none");

                FileUpload25.Attributes.Add("style", "display:none");
                Label25.Attributes.Add("style", "display:none");

                FileUpload26.Attributes.Add("style", "display:none");
                Label26.Attributes.Add("style", "display:none");

                FileUpload27.Attributes.Add("style", "display:none");
                Label27.Attributes.Add("style", "display:none");
            }
        }
        private ObservableCollection<Lineas> _linea;
        public ObservableCollection<Lineas> Lineas
        {
            get
            {
                return _linea ?? (_linea = new ObservableCollection<Lineas>());

            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
            

            using (BinaryReader reader = new BinaryReader(FileUpload2.PostedFile.InputStream))
            {
                if (FileUpload2.HasFile == true)
                {
                    var Archivod = reader.ReadBytes(FileUpload2.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivod);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Bulgarian",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader readerdos = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                if (FileUpload1.HasFile == true)
                {
                    var Archivodos = readerdos.ReadBytes(FileUpload1.PostedFile.ContentLength);
                    var transferentedos = Convert.ToBase64String(Archivodos);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Dansk",
                        Archivo = transferentedos
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader3 = new BinaryReader(FileUpload3.PostedFile.InputStream))
            {
                if (FileUpload3.HasFile == true)
                {
                    var Archivodos = reader3.ReadBytes(FileUpload3.PostedFile.ContentLength);
                    var transferente3 = Convert.ToBase64String(Archivodos);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Eesti keel",
                        Archivo = transferente3
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader4 = new BinaryReader(FileUpload4.PostedFile.InputStream))
            {
                if (FileUpload4.HasFile == true)
                {
                    var Archivo4 = reader4.ReadBytes(FileUpload4.PostedFile.ContentLength);
                    var transferente4 = Convert.ToBase64String(Archivo4);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "English",
                        Archivo = transferente4
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader5 = new BinaryReader(FileUpload5.PostedFile.InputStream))
            {
                if (FileUpload5.HasFile == true)
                {
                    var Archivo5 = reader5.ReadBytes(FileUpload5.PostedFile.ContentLength);
                    var transferente5 = Convert.ToBase64String(Archivo5);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Español",
                        Archivo = transferente5
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload6.PostedFile.InputStream))
            {
                if (FileUpload6.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload6.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Français",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload7.PostedFile.InputStream))
            {
                if (FileUpload7.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload7.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Deutsch",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload8.PostedFile.InputStream))
            {
                if (FileUpload8.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload8.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Gaeilge",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload9.PostedFile.InputStream))
            {
                if (FileUpload9.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload9.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Greek",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload10.PostedFile.InputStream))
            {
                if (FileUpload10.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload10.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Hrvatski Jezik",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload11.PostedFile.InputStream))
            {
                if (FileUpload11.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload11.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Italiano",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload12.PostedFile.InputStream))
            {
                if (FileUpload12.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload12.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Latviešu",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload13.PostedFile.InputStream))
            {
                if (FileUpload13.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload13.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Lietuvių",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload14.PostedFile.InputStream))
            {
                if (FileUpload14.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload14.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Magyar",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload15.PostedFile.InputStream))
            {
                if (FileUpload15.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload15.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Malti",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload16.PostedFile.InputStream))
            {
                if (FileUpload16.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload16.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Nederlands",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload17.PostedFile.InputStream))
            {
                if (FileUpload17.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload17.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Norsk",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload18.PostedFile.InputStream))
            {
                if (FileUpload18.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload18.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Polski",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload19.PostedFile.InputStream))
            {
                if (FileUpload19.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload19.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Português",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload20.PostedFile.InputStream))
            {
                if (FileUpload20.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload20.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Română",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload21.PostedFile.InputStream))
            {
                if (FileUpload21.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload21.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Russian",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload22.PostedFile.InputStream))
            {
                if (FileUpload22.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload22.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Slovenčina",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload23.PostedFile.InputStream))
            {
                if (FileUpload23.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload23.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Slovenščina",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload24.PostedFile.InputStream))
            {
                if (FileUpload24.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload24.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Suomi",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload25.PostedFile.InputStream))
            {
                if (FileUpload25.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload25.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Svenska",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload26.PostedFile.InputStream))
            {
                if (FileUpload26.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload26.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Türkçe",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            using (BinaryReader reader = new BinaryReader(FileUpload27.PostedFile.InputStream))
            {
                if (FileUpload27.HasFile == true)
                {
                    var Archivo = reader.ReadBytes(FileUpload27.PostedFile.ContentLength);
                    var transferente = Convert.ToBase64String(Archivo);
                    var linea = new Lineas()
                    {
                        Clase = CLASE,
                        NombreProd = NOMBRE,
                        Idioma = "Čeština",
                        Archivo = transferente
                    };
                    Lineas.Add(linea);
                }
            }
            for (int i = 0; i < Lineas.Count; i++)
            {
                using (SqlConnection openCon = new SqlConnection("workstation id=tarragobrands.mssql.somee.com;packet size=4096;user id=tarragobrands_SQLLogin_1;pwd=mjmdlqn93g;data source=tarragobrands.mssql.somee.com;persist security info=False;initial catalog=tarragobrands"))
                {
                    string saveStaff = "INSERT into Productos (Nombre, Clase, Idioma, Archivo, Codigo) VALUES (@Nombre, @Clase, @Idioma, @Archivo, @Codigo)";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = NOMBRE;
                        querySaveStaff.Parameters.Add("@Codigo", SqlDbType.VarChar).Value = CODIGO;
                        querySaveStaff.Parameters.Add("@Clase", SqlDbType.VarChar).Value = CLASE;
                        querySaveStaff.Parameters.Add("@Idioma", SqlDbType.VarChar).Value = Lineas[i].Idioma;
                        querySaveStaff.Parameters.Add("@Archivo", SqlDbType.VarChar).Value = Lineas[i].Archivo;
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            
                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }

                }
            }
            Response.Write("<script>alert('PRODUCTO CREADO')</script>");

        }
    }
}
