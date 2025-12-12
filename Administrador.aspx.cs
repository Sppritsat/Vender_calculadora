using System;
using System.Data;
using Modelo;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Linq;

namespace Crud_WebForms
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarFiltroOcupacion();
                CargarSolicitudes();
            }
        }

        /// <summary>
        /// Llena el dropdown de ocupaciones con valores que coinciden EXACTAMENTE con Solicitar.aspx
        /// </summary>
        private void LlenarFiltroOcupacion()
        {
            // ✅ VALORES SINCRONIZADOS: Coinciden exactamente con Solicitar.aspx
            var ocupaciones = new List<ListItem>
            {
                new ListItem("🎓 Estudiante", "Estudiante"),
                new ListItem("👨‍💼 Emprendedor", "Emprendedor"),
                new ListItem("🏢 Empresario / Dueño de negocio", "Empresario / Dueño de negocio"),
                new ListItem("📊 Contador / Financiero", "Contador / Financiero"),
                new ListItem("💼 Consultor", "Consultor"),
                new ListItem("👨‍🏫 Profesor / Docente", "Profesor / Docente"),
                new ListItem("📝 Otro", "Otro")
            };

            ddlOcupacionFiltro.DataSource = ocupaciones;
            ddlOcupacionFiltro.DataBind();

            // Selecciona la opción por defecto "-- Mostrar Todas las Ocupaciones --"
            ddlOcupacionFiltro.SelectedIndex = 0;
        }

        /// <summary>
        /// Carga las solicitudes con los filtros aplicados
        /// </summary>
        private void CargarSolicitudes(string filtroEmail = null, string filtroOcupacion = null, string filtroUso = null)
        {
            SolicitudDAO dao = new SolicitudDAO();
            DataTable dt = dao.ObtenerTodasSolicitudes(filtroEmail, filtroOcupacion, filtroUso);

            if (dt != null && dt.Rows.Count > 0)
            {
                gvSolicitudes.DataSource = dt;
                gvSolicitudes.DataBind();

                lblMensaje.Text = $"✅ Mostrando {dt.Rows.Count} solicitud(es).";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                gvSolicitudes.DataSource = null;
                gvSolicitudes.DataBind();

                lblMensaje.Text = "⚠️ No se encontraron solicitudes con los filtros aplicados.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }
        }

        /// <summary>
        /// Evento del botón Buscar: Aplica los filtros
        /// </summary>
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("═══════════════════════════════════════");
            System.Diagnostics.Debug.WriteLine("🔎 INICIO DE BÚSQUEDA");
            System.Diagnostics.Debug.WriteLine("═══════════════════════════════════════");

            // 1. Capturar valores
            string emailBuscar = string.IsNullOrWhiteSpace(txtBuscarEmail.Text)
                ? null
                : txtBuscarEmail.Text.Trim();

            string ocupacionBuscar = ddlOcupacionFiltro.SelectedValue;

            System.Diagnostics.Debug.WriteLine($"📋 SelectedValue: '{ocupacionBuscar}'");
            System.Diagnostics.Debug.WriteLine($"📋 SelectedIndex: {ddlOcupacionFiltro.SelectedIndex}");
            System.Diagnostics.Debug.WriteLine($"📋 Items.Count: {ddlOcupacionFiltro.Items.Count}");

            if (string.IsNullOrEmpty(ocupacionBuscar))
            {
                ocupacionBuscar = null;
                System.Diagnostics.Debug.WriteLine("📋 Ocupación es NULL (mostrar todas)");
            }

            string usoBuscar = string.IsNullOrWhiteSpace(txtBuscarUso.Text)
                ? null
                : txtBuscarUso.Text.Trim();

            System.Diagnostics.Debug.WriteLine($"📧 Email: '{emailBuscar ?? "NULL"}'");
            System.Diagnostics.Debug.WriteLine($"💼 Ocupación: '{ocupacionBuscar ?? "NULL"}'");
            System.Diagnostics.Debug.WriteLine($"🔍 Uso: '{usoBuscar ?? "NULL"}'");
            System.Diagnostics.Debug.WriteLine("═══════════════════════════════════════");

            CargarSolicitudes(emailBuscar, ocupacionBuscar, usoBuscar);
        }
        protected void btnRecargar_Click(object sender, EventArgs e)
        {
            // Limpiar todos los controles de filtro
            txtBuscarEmail.Text = string.Empty;
            txtBuscarUso.Text = string.Empty;
            ddlOcupacionFiltro.SelectedIndex = 0; // Volver a "-- Mostrar Todas..."

            System.Diagnostics.Debug.WriteLine("🔄 Filtros reiniciados - Mostrando todas las solicitudes");

            // Cargar todas las solicitudes sin filtros
            CargarSolicitudes();
        }
    }
}