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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    TextBox1.Text = Request.Cookies["UserName"].Value;
                    TextBox2.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(SqlDataSource1.ConnectionString);

            string usuario = TextBox1.Text;
            string clave = TextBox2.Text;

            try
            {
                conexion.Open();
                string instrucciones = "select Count(*) from Acceso where usuario='" + usuario + "'and clave='" + clave + "'";

                SqlDataAdapter SQLDA = new SqlDataAdapter(instrucciones, conexion);
                DataTable logeo = new DataTable();
                SQLDA.Fill(logeo);

                string diferenciar = "select * from Acceso where usuario='" + usuario + "'and clave='" + clave + "'";
                SqlCommand comando = new SqlCommand(diferenciar, conexion);
                SqlDataReader regisro = comando.ExecuteReader();

                if (logeo.Rows[0][0].ToString() == "1")
                {
                    if (regisro.Read())
                    {
                        if (regisro["Roll"].ToString() == "Experto")
                        {
                            Response.Redirect("Panel.aspx");
                        }
                        else
                        {
                            Response.Redirect("Solicitudes.aspx");
                        }
                    }
                }
                else
                {
                    Label1.Text = "Usuario o clave incorrectos. Intente de nuevo.";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["UserName"].Value = TextBox1.Text.Trim();
            Response.Cookies["Password"].Value = TextBox2.Text.Trim();
        }
    }
}