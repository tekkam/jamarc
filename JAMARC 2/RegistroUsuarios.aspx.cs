using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace JAMARC_2
{
    public partial class RegistroUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(SqlDataSource1.ConnectionString);
            try
            {
                conexion.Open();
                string instrucciones = "insert into Usuarios(Usuario,Departamento,Telefono,Email) values (@Usuario,@Departamento,@Telefono,@Email)";

                SqlCommand comando = new SqlCommand(instrucciones, conexion);
                comando.Parameters.Add("@Usuario", SqlDbType.VarChar);
                comando.Parameters.Add("@Departamento", SqlDbType.VarChar);
                comando.Parameters.Add("@Telefono", SqlDbType.NChar);
                comando.Parameters.Add("@Email", SqlDbType.VarChar);

                comando.Parameters["@Usuario"].Value = TextBox1.Text;
                comando.Parameters["@Departamento"].Value = TextBox2.Text;
                comando.Parameters["@Telefono"].Value = TextBox3.Text;
                comando.Parameters["@Email"].Value = TextBox4.Text;

                int resultado = comando.ExecuteNonQuery();

                if (resultado == 1)
                {
                    Label1.Text = "Solicitud procesada correctamente.";
                }
                else
                {
                    Label1.Text = "No se pudo guardar los datos.";
                }
            }
            catch (SqlException ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                conexion.Close();
            }

        }

        protected void BorrarButton_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}