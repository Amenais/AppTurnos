using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AppTurnos.web
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection cnx = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionAppTurnos"].ConnectionString);

        protected void BtnRegistrarse_Click(object sender, EventArgs e)
        {
            string usuario = TxtUsuario.Text;
            string contrasena = TxtContrasena.Text;
            string confirmarContrasena = TxtConfirmarrContrasena.Text;

            if (usuario == "" || contrasena == "" || confirmarContrasena == "")
            {
                LblErrorContrasena.Text = "¡Las contraseñas no coinciden!";
            }
            else
            {
                cnx.Open();
                SqlCommand cmdSelect = new SqlCommand($"select count(*) from Ususarios where Usuario='{usuario}'", cnx)
                {
                    CommandType = CommandType.Text
                };

                int registros = Convert.ToInt32(cmdSelect.ExecuteScalar());
                if (registros < 1)
                {
                    SqlCommand cmdInsert = new SqlCommand($"Insert into Usuarios (Usuario, Contrasena) values('{usuario}', (Ecrypt)");
                }
            }
        }

        protected void BtnRegresar_Click(object sender, EventArgs e)
        {

        }
    }
}