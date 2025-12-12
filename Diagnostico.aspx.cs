using System;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
using Modelo;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Crud_WebForms
{
    public partial class Diagnostico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarOcupacionesBD();
                LlenarDropdownTest();
            }
        }

        /// <summary>
        /// Carga y muestra todas las ocupaciones únicas en la BD
        /// </summary>
        private void CargarOcupacionesBD()
        {
            StringBuilder html = new StringBuilder();

            using (Conexion con = new Conexion())
            {
                try
                {
                    con.abrirBD();

                    string query = @"SELECT DISTINCT ocupacion, 
                                    COUNT(*) as cantidad,
                                    LENGTH(ocupacion) as longitud_bytes,
                                    CHAR_LENGTH(ocupacion) as longitud_caracteres
                                    FROM solicitudes 
                                    WHERE ocupacion IS NOT NULL AND ocupacion != ''
                                    GROUP BY ocupacion 
                                    ORDER BY ocupacion";

                    using (MySqlCommand cmd = new MySqlCommand(query, con.conexionBD))
                    {
                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            html.Append("<table>");
                            html.Append("<tr><th>Ocupación</th><th>Cantidad</th><th>Bytes</th><th>Caracteres</th><th>Hex</th></tr>");

                            while (reader.Read())
                            {
                                string ocupacion = reader["ocupacion"].ToString();
                                int cantidad = Convert.ToInt32(reader["cantidad"]);
                                int bytes = Convert.ToInt32(reader["longitud_bytes"]);
                                int chars = Convert.ToInt32(reader["longitud_caracteres"]);

                                // Convertir a hexadecimal para ver caracteres ocultos
                                string hex = BitConverter.ToString(Encoding.UTF8.GetBytes(ocupacion)).Replace("-", " ");

                                html.Append("<tr>");
                                html.Append($"<td><strong>'{ocupacion}'</strong></td>");
                                html.Append($"<td>{cantidad}</td>");
                                html.Append($"<td>{bytes}</td>");
                                html.Append($"<td>{chars}</td>");
                                html.Append($"<td style='font-family: monospace; font-size: 11px;'>{hex.Substring(0, Math.Min(50, hex.Length))}...</td>");
                                html.Append("</tr>");
                            }

                            html.Append("</table>");
                        }
                    }

                    lblOcupacionesBD.Text = html.ToString();
                }
                catch (Exception ex)
                {
                    lblOcupacionesBD.Text = $"<div class='error'>❌ Error: {ex.Message}</div>";
                }
            }
        }

        /// <summary>
        /// Llena el dropdown con las ocupaciones reales de la BD
        /// </summary>
        private void LlenarDropdownTest()
        {
            using (Conexion con = new Conexion())
            {
                try
                {
                    con.abrirBD();

                    string query = "SELECT DISTINCT ocupacion FROM solicitudes WHERE ocupacion IS NOT NULL ORDER BY ocupacion";

                    using (MySqlCommand cmd = new MySqlCommand(query, con.conexionBD))
                    {
                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string ocupacion = reader["ocupacion"].ToString();
                                ddlTestOcupacion.Items.Add(new ListItem(ocupacion, ocupacion));
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblResultadoFiltro.Text = $"<div class='error'>Error al cargar dropdown: {ex.Message}</div>";
                }
            }
        }

        /// <summary>
        /// Prueba el filtro con la ocupación seleccionada
        /// </summary>
        protected void btnProbarFiltro_Click(object sender, EventArgs e)
        {
            string ocupacionSeleccionada = ddlTestOcupacion.SelectedValue;

            if (string.IsNullOrEmpty(ocupacionSeleccionada))
            {
                lblResultadoFiltro.Text = "<div class='warning'>⚠️ Selecciona una ocupación</div>";
                return;
            }

            StringBuilder html = new StringBuilder();

            // Usar el mismo método que usa Administrador.aspx
            SolicitudDAO dao = new SolicitudDAO();
            DataTable dt = dao.ObtenerTodasSolicitudes(null, ocupacionSeleccionada, null);

            html.Append($"<div class='code'>");
            html.Append($"Ocupación buscada: '{ocupacionSeleccionada}'<br>");
            html.Append($"Longitud: {ocupacionSeleccionada.Length} caracteres<br>");
            html.Append($"Resultado: {dt.Rows.Count} registros encontrados");
            html.Append("</div>");

            if (dt.Rows.Count > 0)
            {
                html.Append("<div class='success'>✅ FILTRO FUNCIONÓ CORRECTAMENTE</div>");
                html.Append("<table>");
                html.Append("<tr><th>ID</th><th>Nombre</th><th>Email</th><th>Ocupación</th></tr>");

                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    html.Append($"<td>{row["id"]}</td>");
                    html.Append($"<td>{row["nombre"]}</td>");
                    html.Append($"<td>{row["email"]}</td>");
                    html.Append($"<td><strong>{row["ocupacion"]}</strong></td>");
                    html.Append("</tr>");
                }

                html.Append("</table>");
            }
            else
            {
                html.Append("<div class='error'>❌ NO SE ENCONTRARON REGISTROS</div>");
                html.Append("<p>Esto significa que:</p>");
                html.Append("<ul>");
                html.Append("<li>El valor buscado no coincide exactamente con la BD</li>");
                html.Append("<li>Puede haber espacios extra o caracteres invisibles</li>");
                html.Append("<li>La comparación case-sensitive está fallando</li>");
                html.Append("</ul>");
            }

            lblResultadoFiltro.Text = html.ToString();

            MostrarQuerySQL(ocupacionSeleccionada);
        }

        /// <summary>
        /// Muestra el query SQL que se ejecutó
        /// </summary>
        private void MostrarQuerySQL(string ocupacion)
        {
            StringBuilder html = new StringBuilder();

            string valorNormalizado = ocupacion.Trim().ToLower();

            html.Append("<div class='code'>");
            html.Append("SELECT id, nombre, email, telefono, ocupacion, uso, referencia, fecha<br>");
            html.Append("FROM solicitudes<br>");
            html.Append($"WHERE LOWER(TRIM(ocupacion)) = '{valorNormalizado}'<br>");
            html.Append("ORDER BY fecha DESC");
            html.Append("</div>");

            html.Append("<h3>Valores de Comparación:</h3>");
            html.Append("<div class='code'>");
            html.Append($"Valor original: '{ocupacion}'<br>");
            html.Append($"Valor normalizado: '{valorNormalizado}'<br>");
            html.Append($"Length original: {ocupacion.Length}<br>");
            html.Append($"Length normalizado: {valorNormalizado.Length}");
            html.Append("</div>");

            lblQuerySQL.Text = html.ToString();
        }

        /// <summary>
        /// Comparación byte a byte entre valores
        /// </summary>
        private void CompararValores()
        {
            StringBuilder html = new StringBuilder();

            // Valores esperados del formulario
            var valoresEsperados = new List<string>
            {
                "Estudiante",
                "Emprendedor",
                "Empresario / Dueño de negocio",
                "Contador / Financiero",
                "Consultor",
                "Profesor / Docente",
                "Otro"
            };

            // Valores en la BD
            var valoresBD = new List<string>();

            using (Conexion con = new Conexion())
            {
                try
                {
                    con.abrirBD();
                    string query = "SELECT DISTINCT ocupacion FROM solicitudes WHERE ocupacion IS NOT NULL";

                    using (MySqlCommand cmd = new MySqlCommand(query, con.conexionBD))
                    {
                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                valoresBD.Add(reader["ocupacion"].ToString());
                            }
                        }
                    }
                }
                catch { }
            }

            html.Append("<table>");
            html.Append("<tr><th>Valor Esperado</th><th>En BD</th><th>Coincide</th></tr>");

            foreach (var esperado in valoresEsperados)
            {
                bool existe = valoresBD.Any(v => v.Equals(esperado, StringComparison.OrdinalIgnoreCase));
                string clase = existe ? "success" : "error";
                string icono = existe ? "✅" : "❌";

                html.Append("<tr>");
                html.Append($"<td>{esperado}</td>");
                html.Append($"<td>{(existe ? "SÍ" : "NO")}</td>");
                html.Append($"<td class='{clase}'>{icono}</td>");
                html.Append("</tr>");
            }

            html.Append("</table>");

            lblComparacion.Text = html.ToString();
        }

        /// <summary>
        /// Test SQL directo sin usar el DAO
        /// </summary>
        protected void btnTestSQL_Click(object sender, EventArgs e)
        {
            StringBuilder html = new StringBuilder();

            using (Conexion con = new Conexion())
            {
                try
                {
                    con.abrirBD();

                    // Test 1: Buscar "Consultor" (sabemos que existe)
                    string query1 = "SELECT COUNT(*) FROM solicitudes WHERE LOWER(TRIM(ocupacion)) = 'consultor'";
                    using (MySqlCommand cmd = new MySqlCommand(query1, con.conexionBD))
                    {
                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        html.Append($"<div class='code'>Test 1: Buscar 'consultor' → {count} registros</div>");
                    }

                    // Test 2: Buscar "Emprendedor"
                    string query2 = "SELECT COUNT(*) FROM solicitudes WHERE LOWER(TRIM(ocupacion)) = 'emprendedor'";
                    using (MySqlCommand cmd = new MySqlCommand(query2, con.conexionBD))
                    {
                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        html.Append($"<div class='code'>Test 2: Buscar 'emprendedor' → {count} registros</div>");
                    }

                    // Test 3: Buscar "Estudiante"
                    string query3 = "SELECT COUNT(*) FROM solicitudes WHERE LOWER(TRIM(ocupacion)) = 'estudiante'";
                    using (MySqlCommand cmd = new MySqlCommand(query3, con.conexionBD))
                    {
                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        html.Append($"<div class='code'>Test 3: Buscar 'estudiante' → {count} registros</div>");
                    }

                    html.Append("<div class='success'>✅ Tests SQL ejecutados correctamente</div>");

                    lblTestSQL.Text = html.ToString();

                    // Actualizar comparación
                    CompararValores();
                }
                catch (Exception ex)
                {
                    lblTestSQL.Text = $"<div class='error'>❌ Error: {ex.Message}</div>";
                }
            }
        }
    }
}