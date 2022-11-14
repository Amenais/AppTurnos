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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string passPhrase = "AppTurnos";

            string conectar = ConfigurationManager.ConnectionStrings["ConexionAppTurnos"].ConnectionString;
            
            SqlConnection cnx = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("Usuarios_Validar", cnx) { CommandType = CommandType.StoredProcedure };
                        
            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = TxtUsuario.Text;
            cmd.Parameters.Add("@Contraseña", SqlDbType.VarChar, 50).Value = TxtContrasena.Text;
            cmd.Parameters.Add("@PassPhrase", SqlDbType.VarChar, 50).Value = passPhrase;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Agregamos una sesión de usuario
                Session["session_usuario"] = TxtUsuario.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                LblError.Text = "Error de Usuario o Contraseña";
            }
        }
    }
}