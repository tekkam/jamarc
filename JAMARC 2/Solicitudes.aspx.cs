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
    public partial class Solicitudes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cargar_usuarios();
                cargar_expertos();
            }
        }

        protected void cargar_usuarios()
        {
            SqlConnection conexion = new SqlConnection(SqlDataSource1.ConnectionString);
            conexion.Open();
            string instruccion = "select Usuario from Usuarios";
            SqlCommand comando = new SqlCommand(instruccion, conexion);
            SqlDataReader usuarios = comando.ExecuteReader();
            DropDownList2.Items.Insert(0, "-----Elegir Aquí-----");
            while (usuarios.Read())
            {
                DropDownList2.Items.Add(new ListItem(usuarios["Usuario"].ToString()));
            }
            conexion.Close();
        }

        protected void cargar_expertos()
        {
            SqlConnection conexion = new SqlConnection(SqlDataSource1.ConnectionString);
            conexion.Open();
            string instruccion = "select Experto from Expertos";
            SqlCommand comando = new SqlCommand(instruccion, conexion);
            SqlDataReader expertos = comando.ExecuteReader();
            DropDownList3.Items.Insert(0, "-----Elegir Aquí-----");
            while (expertos.Read())
            {
                DropDownList3.Items.Add(new ListItem(expertos["Experto"].ToString()));
            }
            conexion.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection(SqlDataSource1.ConnectionString);
            try
            {
                conexion.Open();
                string instrucciones = "insert into Solicitudes(Fecha,Usuario,Departamento,Tipo_Servicio,Detalle,Prioridad,Experto,Entrega_aprox,Estatus) values (@Fecha,@Usuario,@Departamento,@Tipo_Servicio,@Detalle,@Prioridad,@Experto,@Entrega_aprox,@Estatus)";

                SqlCommand comando = new SqlCommand(instrucciones, conexion);
                comando.Parameters.Add("@Fecha", SqlDbType.DateTime);
                comando.Parameters.Add("@Usuario", SqlDbType.VarChar);
                comando.Parameters.Add("@Departamento", SqlDbType.VarChar);
                comando.Parameters.Add("@Tipo_Servicio", SqlDbType.VarChar);
                comando.Parameters.Add("@Detalle", SqlDbType.VarChar);
                comando.Parameters.Add("@Prioridad", SqlDbType.VarChar);
                comando.Parameters.Add("@Experto", SqlDbType.VarChar);
                comando.Parameters.Add("@Entrega_aprox", SqlDbType.Date);
                comando.Parameters.Add("@Estatus", SqlDbType.VarChar);

                comando.Parameters["@Fecha"].Value = DateTime.Now;
                comando.Parameters["@Usuario"].Value = DropDownList2.SelectedItem.ToString();
                comando.Parameters["@Departamento"].Value = TextBox3.Text;
                if (DropDownList1.SelectedIndex == 0 && TextBox2.Text != null)
                {
                    comando.Parameters["@Tipo_Servicio"].Value = TextBox2.Text;
                }
                else
                {
                    comando.Parameters["@Tipo_Servicio"].Value = DropDownList1.SelectedItem.ToString();
                }
                comando.Parameters["@Detalle"].Value = TextBox1.Text;
                comando.Parameters["@Prioridad"].Value = RadioButtonList1.SelectedItem.ToString();
                comando.Parameters["@Experto"].Value = DropDownList3.SelectedItem.ToString();
                comando.Parameters["@Entrega_aprox"].Value = Calendar1.SelectedDate;
                comando.Parameters["@Estatus"].Value = RadioButtonList2.SelectedItem.ToString();

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList1.ClearSelection();
            TextBox1.Text = "";
            TextBox2.Text = "";
            RadioButtonList1.ClearSelection();
            DropDownList3.ClearSelection();
            RadioButtonList2.ClearSelection();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroUsuarios.aspx");
        }
    }
}