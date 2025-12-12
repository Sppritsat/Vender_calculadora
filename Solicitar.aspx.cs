using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Modelo; // Importar la clase Conexion

namespace Crud_WebForms
{
    public partial class Solicitar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Código inicial
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = txtNombre.Text.Trim();
                string email = txtEmail.Text.Trim();
                string telefono = txtTelefono.Text.Trim();
                string ocupacion = ddlOcupacion.SelectedValue;
                string uso = txtUso.Text.Trim();
                string referencia = ddlReferencia.SelectedValue;
                bool newsletter = chkNewsletter.Checked;

                bool guardado = GuardarSolicitud(nombre, email, telefono, ocupacion, uso, referencia, newsletter);

                if (guardado)
                {
                    pnlFormulario.Visible = false;
                    pnlExito.Visible = true;
                    lblEmailConfirmacion.Text = email;
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("Error al guardar la solicitud");
                }
            }
        }

        protected void btnNuevaSolicitud_Click(object sender, EventArgs e)
        {
            LimpiarFormulario();
            pnlFormulario.Visible = true;
            pnlExito.Visible = false;
        }

        protected void ValidarTerminos(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerminos.Checked;
        }

        private bool GuardarSolicitud(string nombre, string email, string telefono,
            string ocupacion, string uso, string referencia, bool newsletter)
        {
            try
            {
                // Uso del patrón 'using' para la conexión y el comando SQL
                using (Modelo.Conexion con = new Modelo.Conexion())
                {
                    con.abrirBD();

                    string query = @"INSERT INTO solicitudes 
                                     (nombre, email, telefono, ocupacion, uso, referencia, newsletter, fecha) 
                                     VALUES (@nombre, @email, @telefono, @ocupacion, @uso, @referencia, @newsletter, NOW())";

                    using (MySqlCommand cmd = new MySqlCommand(query, con.conexionBD))
                    {
                        cmd.Parameters.AddWithValue("@nombre", nombre);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@telefono", telefono);
                        cmd.Parameters.AddWithValue("@ocupacion", ocupacion);
                        cmd.Parameters.AddWithValue("@uso", uso);
                        cmd.Parameters.AddWithValue("@referencia", string.IsNullOrEmpty(referencia) ? DBNull.Value : (object)referencia);
                        cmd.Parameters.AddWithValue("@newsletter", newsletter);

                        int resultado = cmd.ExecuteNonQuery();
                        return resultado > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error al guardar: " + ex.Message);
                return false;
            }
        }

        private void LimpiarFormulario()
        {
            txtNombre.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            ddlOcupacion.SelectedIndex = 0;
            txtUso.Text = "";
            ddlReferencia.SelectedIndex = 0;
            chkNewsletter.Checked = false;
            chkTerminos.Checked = false;
        }
    }
}