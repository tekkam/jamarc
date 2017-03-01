using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;


namespace JAMARC_2
{
    public partial class IngresarUsuario : System.Web.UI.Page
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
                string instrucciones = "insert into IngresarUsuarios(Usuario,Departamento,Telefono,Email) values (@Usuario,@Departamento,@Telefono,@Email)";

                SqlCommand comando = new SqlCommand(instrucciones, conexion);
                comando.Parameters.Add("@Usuario", SqlDbType.VarChar);
                comando.Parameters.Add("@Departamento", SqlDbType.VarChar);
                comando.Parameters.Add("@Telefono", SqlDbType.NChar);
                comando.Parameters.Add("@Email", SqlDbType.VarChar);
                
                comando.Parameters["@Usuario"].Value = TextBox1.Text;
                comando.Parameters["@Departamento"].Value = TextBox2.Text;
                comando.Parameters["@Telefono"].Value = TextBox3.Text;
                comando.Parameters["@Email"].Value = TextBox4.Text;
                string nombre = TextBox1.Text;
                string destinatario = TextBox4.Text;
                string departamento = TextBox2.Text;
                string telefono = TextBox3.Text;

                int resultado = comando.ExecuteNonQuery();

                if (resultado == 1)
                {
                    Label1.Text = "Solicitud procesada correctamente.";
                    CreateTimeoutTestMessage("server", nombre, destinatario,departamento,telefono);
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
        /*
        protected string smtpClient(MailMessage smtp)
        {
            SmtpClient smtpClient = new SmtpClient("mail.MyWebsiteDomainName.com", 25);

            smtpClient.Credentials = new System.Net.NetworkCredential("info@MyWebsiteDomainName.com", "myIDPassword");
            smtpClient.UseDefaultCredentials = true;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress("info@MyWebsiteDomainName", "MyWeb Site");
            mail.To.Add(new MailAddress("info@MyWebsiteDomainName"));
            mail.CC.Add(new MailAddress("MyEmailID@gmail.com"));

            smtpClient.Send(mail);
        }

    *//*

void SendEMail(
    string from,   // e.g., "sender@abc.com"
    string to,     // e.g., "receiver@abc.com"
    string subject,// e.g., "Please read this!"
    string body)   // e.g., "Thanks for the memories."
    {
        try
        {
            // Construct a new e-mail message 
            SmtpClient client = new SmtpClient(smtpClient());
            client.Send(from, to, subject, body);
        }
        catch (SmtpException ex)
        {
            Label1.Text+="\t\n Falló enviar EMail: " + ex.Message;
        }
    }*/

        public static void CreateTimeoutTestMessage(string server,string nombre,
            string destinatario, string departamento, string telefono)
        {
            string to = destinatario;
            string from = "jamarcrd@yahoo.com";
            string subject = "Registro en JAMARC: \t\n" + nombre;
            string body = @"Saludos Sr/a. "+ nombre +
            "\t\n\t\nSus datos de registro en JAMARC Service Manager son:\t\n\t\n" +
            "Usuario: " + nombre + "\t\nDepartamento: " + departamento + "\t\nTelefono: " + telefono+
            "Y su actual direccion de correo.\t\n\t\n" +
            "Para cualquier cambio o actualización de los datos registrados escribanos a esta misma direccion" +
            "(jamarcrd@gmail.com), gracias.";
            MailMessage message = new MailMessage(from, to, subject, body);
            SmtpClient client = new SmtpClient(server);
            client.UseDefaultCredentials=true;
            Console.WriteLine("Changing time out from {0} to 100.", client.Timeout);
            client.Timeout = 100;
            // Credentials are necessary if the server requires the client 
            // to authenticate before it will send e-mail on the client's behalf.
            client.Credentials = CredentialCache.DefaultNetworkCredentials;

            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught in CreateTimeoutTestMessage(): {0}",
                            ex.ToString());
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