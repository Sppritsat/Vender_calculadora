<%@ Page Title="Solicitar Acceso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Solicitar.aspx.cs" Inherits="Crud_WebForms.Solicitar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .hero-request {
            background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
            color: white;
            padding: 3rem 2rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            box-shadow: 0 10px 30px rgba(30, 58, 138, 0.3);
        }

        .benefits-box {
            background: linear-gradient(135deg, #ecfdf5 0%, #d1fae5 100%);
            border: 2px solid #10b981;
            border-radius: 15px;
            padding: 2rem;
            margin-bottom: 2rem;
        }

        .benefit-item {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1rem;
            padding: 0.75rem;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        .benefit-icon {
            font-size: 2rem;
            flex-shrink: 0;
        }

        .form-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 2.5rem;
            margin-bottom: 2rem;
        }

        .form-label {
            font-weight: 600;
            color: #1f2937;
            margin-bottom: 0.5rem;
        }

        .form-control, .form-select {
            border: 2px solid #e5e7eb;
            border-radius: 10px;
            padding: 0.75rem 1rem;
            transition: all 0.3s ease;
        }

        .form-control:focus, .form-select:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .required-star {
            color: #ef4444;
            font-weight: 700;
        }

        .form-text {
            color: #6b7280;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }

        .checkbox-box {
            background: #f9fafb;
            border: 2px solid #e5e7eb;
            border-radius: 10px;
            padding: 1.5rem;
            margin-bottom: 1rem;
        }

        .checkbox-box.highlight {
            background: linear-gradient(135deg, #fffbeb 0%, #fef3c7 100%);
            border-color: #f59e0b;
        }

        .btn-submit {
            background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
            color: white;
            border: none;
            border-radius: 10px;
            padding: 1rem 2rem;
            font-size: 1.1rem;
            font-weight: 700;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(30, 58, 138, 0.3);
        }

        .success-box {
            background: linear-gradient(135deg, #ecfdf5 0%, #d1fae5 100%);
            border-radius: 15px;
            padding: 3rem 2rem;
            text-align: center;
        }

        .success-icon {
            font-size: 5rem;
            margin-bottom: 1rem;
        }

        .contact-card {
            background: white;
            border-radius: 12px;
            padding: 1.5rem;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            height: 100%;
            border-top: 4px solid;
        }

        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
        }

        .faq-item {
            background: white;
            border-radius: 10px;
            padding: 1.5rem;
            margin-bottom: 1rem;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        .faq-question {
            font-weight: 700;
            color: #1e3a8a;
            margin-bottom: 0.5rem;
        }

        .text-danger.small {
            display: block;
            margin-top: 0.25rem;
            font-size: 0.875rem;
        }
    </style>

    <!-- Hero Section -->
    <div class="hero-request text-center">
        <h1 class="display-4 fw-bold mb-3">📝 Solicita tu Calculadora Profesional</h1>
        <p class="lead mb-0">Completa el formulario y recibe la herramienta completa sin costo</p>
    </div>

    <!-- Benefits Box -->
    <div class="benefits-box">
        <h4 class="fw-bold mb-4" style="color: #047857;">🎁 ¿Qué recibirás completamente GRATIS?</h4>
        <div class="row">
            <div class="col-md-6">
                <div class="benefit-item">
                    <div class="benefit-icon">✅</div>
                    <div>
                        <strong>Calculadora HTML Completa</strong>
                        <div class="text-muted small">12 módulos listos para usar</div>
                    </div>
                </div>
                <div class="benefit-item">
                    <div class="benefit-icon">📖</div>
                    <div>
                        <strong>Manual de Usuario</strong>
                        <div class="text-muted small">Guía paso a paso</div>
                    </div>
                </div>
                <div class="benefit-item">
                    <div class="benefit-icon">🎓</div>
                    <div>
                        <strong>Tutorial de Instalación</strong>
                        <div class="text-muted small">Instrucciones completas</div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="benefit-item">
                    <div class="benefit-icon">💬</div>
                    <div>
                        <strong>Soporte por WhatsApp</strong>
                        <div class="text-muted small">Asistencia inicial gratuita</div>
                    </div>
                </div>
                <div class="benefit-item">
                    <div class="benefit-icon">🔄</div>
                    <div>
                        <strong>Actualizaciones</strong>
                        <div class="text-muted small">Mejoras futuras incluidas</div>
                    </div>
                </div>
                <div class="benefit-item">
                    <div class="benefit-icon">⚡</div>
                    <div>
                        <strong>Entrega en 24h</strong>
                        <div class="text-muted small">Respuesta rápida garantizada</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Formulario -->
    <div class="form-card">
        <asp:Panel ID="pnlFormulario" runat="server">
            <h3 class="fw-bold mb-4 text-center" style="color: #1e3a8a;">📋 Formulario de Solicitud</h3>

            <!-- Nombre Completo -->
            <div class="mb-4">
                <label for="txtNombre" class="form-label">
                    Nombre Completo <span class="required-star">*</span>
                </label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" 
                    placeholder="Ej: Juan Pérez García"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                    ControlToValidate="txtNombre"
                    ErrorMessage="⚠️ El nombre es obligatorio"
                    CssClass="text-danger small"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Email -->
            <div class="mb-4">
                <label for="txtEmail" class="form-label">
                    Correo Electrónico <span class="required-star">*</span>
                </label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" 
                    TextMode="Email" placeholder="tu@email.com"></asp:TextBox>
                <div class="form-text">📧 Te enviaremos la calculadora a este correo</div>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail"
                    ErrorMessage="⚠️ El email es obligatorio"
                    CssClass="text-danger small"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="⚠️ Formato de email inválido"
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                    CssClass="text-danger small"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Teléfono -->
            <div class="mb-4">
                <label for="txtTelefono" class="form-label">
                    Teléfono / WhatsApp <span class="required-star">*</span>
                </label>
                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" 
                    placeholder="+52 449 123 4567"></asp:TextBox>
                <div class="form-text">💬 Para contacto directo por WhatsApp</div>
                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" 
                    ControlToValidate="txtTelefono"
                    ErrorMessage="⚠️ El teléfono es obligatorio"
                    CssClass="text-danger small"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Ocupación - ✅ VALORES CORREGIDOS -->
            <div class="mb-4">
                <label for="ddlOcupacion" class="form-label">
                    ¿Cuál es tu ocupación? <span class="required-star">*</span>
                </label>
                <asp:DropDownList ID="ddlOcupacion" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Selecciona una opción..." Value=""></asp:ListItem>
                    <asp:ListItem Text="🎓 Estudiante" Value="Estudiante"></asp:ListItem>
                    <asp:ListItem Text="👨‍💼 Emprendedor" Value="Emprendedor"></asp:ListItem>
                    <asp:ListItem Text="🏢 Empresario / Dueño de negocio" Value="Empresario / Dueño de negocio"></asp:ListItem>
                    <asp:ListItem Text="📊 Contador / Financiero" Value="Contador / Financiero"></asp:ListItem>
                    <asp:ListItem Text="💼 Consultor" Value="Consultor"></asp:ListItem>
                    <asp:ListItem Text="👨‍🏫 Profesor / Docente" Value="Profesor / Docente"></asp:ListItem>
                    <asp:ListItem Text="📝 Otro" Value="Otro"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvOcupacion" runat="server" 
                    ControlToValidate="ddlOcupacion"
                    InitialValue=""
                    ErrorMessage="⚠️ Selecciona tu ocupación"
                    CssClass="text-danger small"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Uso previsto -->
            <div class="mb-4">
                <label for="txtUso" class="form-label">
                    ¿Para qué usarás la calculadora? <span class="required-star">*</span>
                </label>
                <asp:TextBox ID="txtUso" runat="server" CssClass="form-control" 
                    TextMode="MultiLine" Rows="4"
                    placeholder="Ej: Necesito evaluar la viabilidad financiera de un proyecto de panadería para mi curso de emprendimiento..."></asp:TextBox>
                <div class="form-text">💡 Cuéntanos brevemente tu caso de uso</div>
                <asp:RequiredFieldValidator ID="rfvUso" runat="server" 
                    ControlToValidate="txtUso"
                    ErrorMessage="⚠️ Describe cómo usarás la herramienta"
                    CssClass="text-danger small"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Cómo nos encontró -->
            <div class="mb-4">
                <label for="ddlReferencia" class="form-label">
                    ¿Cómo conociste esta herramienta?
                </label>
                <asp:DropDownList ID="ddlReferencia" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Selecciona una opción..." Value=""></asp:ListItem>
                    <asp:ListItem Text="🔍 Búsqueda en Google" Value="Google"></asp:ListItem>
                    <asp:ListItem Text="📱 Redes Sociales" Value="Redes Sociales"></asp:ListItem>
                    <asp:ListItem Text="👥 Recomendación de un conocido" Value="Recomendación"></asp:ListItem>
                    <asp:ListItem Text="👨‍🏫 Mi profesor/a me la compartió" Value="Profesor"></asp:ListItem>
                    <asp:ListItem Text="📝 Otro medio" Value="Otro"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- Newsletter -->
            <div class="checkbox-box">
                <asp:CheckBox ID="chkNewsletter" runat="server" CssClass="form-check-input me-2" />
                <label class="form-check-label">
                    <strong>📧 Quiero recibir actualizaciones por email</strong><br>
                    <small class="text-muted">Acepto recibir nuevas versiones, mejoras y consejos de uso (puedes cancelar en cualquier momento)</small>
                </label>
            </div>

            <!-- Terms -->
            <div class="checkbox-box highlight">
                <asp:CheckBox ID="chkTerminos" runat="server" CssClass="form-check-input me-2" />
                <label class="form-check-label">
                    <small>
                        <strong>Acepto los términos de uso y política de privacidad.</strong> 
                        Entiendo que esta herramienta es gratuita y se proporciona "tal cual" con fines educativos y profesionales.
                        <span class="required-star">*</span>
                    </small>
                </label>
                <asp:CustomValidator ID="cvTerminos" runat="server"
                    ErrorMessage="⚠️ Debes aceptar los términos para continuar"
                    CssClass="text-danger small"
                    OnServerValidate="ValidarTerminos"
                    Display="Dynamic">
                </asp:CustomValidator>
            </div>

            <!-- Submit Button -->
            <div class="d-grid gap-2 mt-4">
                <asp:Button ID="btnEnviar" runat="server" 
                    CssClass="btn-submit" 
                    Text="🚀 Solicitar Calculadora Gratis"
                    OnClick="btnEnviar_Click" />
            </div>

            <p class="text-center mt-3 text-muted">
                <strong>⚡ Respuesta garantizada en menos de 24 horas</strong><br>
                <small>Te contactaremos por WhatsApp o email para enviarte tu calculadora</small>
            </p>
        </asp:Panel>

        <!-- Success Message -->
        <asp:Panel ID="pnlExito" runat="server" Visible="false" CssClass="success-box">
            <div class="success-icon">✅</div>
            <h2 class="fw-bold mb-3" style="color: #047857;">¡Solicitud Enviada Exitosamente!</h2>
            <p class="lead mb-4">
                Gracias por tu interés en Financial Calculator Pro. Hemos recibido tu solicitud correctamente.
            </p>
            <div class="alert alert-success" style="background: white; border: 2px solid #10b981;">
                <h5 class="fw-bold mb-3">📬 Próximos Pasos:</h5>
                <p class="mb-2">
                    <strong>1.</strong> Revisa tu correo: <strong><asp:Label ID="lblEmailConfirmacion" runat="server"></asp:Label></strong>
                </p>
                <p class="mb-2">
                    <strong>2.</strong> Te contactaremos por WhatsApp en las próximas 24 horas
                </p>
                <p class="mb-0">
                    <strong>3.</strong> Recibirás la calculadora completa con todas las instrucciones
                </p>
            </div>
            <asp:Button ID="btnNuevaSolicitud" runat="server" 
                Text="← Volver al Inicio" 
                CssClass="btn btn-outline-primary btn-lg mt-3"
                OnClick="btnNuevaSolicitud_Click"
                CausesValidation="false" />
        </asp:Panel>
    </div>

    <!-- Contact Cards -->
    <h3 class="text-center fw-bold mb-4" style="color: #1e3a8a;">📞 ¿Prefieres Contacto Directo?</h3>
    <div class="row mb-4">
        <div class="col-md-4 mb-3">
            <div class="contact-card" style="border-top-color: #3b82f6;">
                <div style="font-size: 3rem;">📧</div>
                <h5 class="fw-bold mt-3" style="color: #1e3a8a;">Email</h5>
                <a href="mailto:info@financialcalc.com" class="text-decoration-none" style="color: #3b82f6;">
                    info@financialcalc.com
                </a>
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <div class="contact-card" style="border-top-color: #10b981;">
                <div style="font-size: 3rem;">💬</div>
                <h5 class="fw-bold mt-3" style="color: #047857;">WhatsApp</h5>
                <a href="https://wa.me/5214491234567" target="_blank" class="text-decoration-none" style="color: #10b981;">
                    +52 449 123 4567
                </a>
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <div class="contact-card" style="border-top-color: #f59e0b;">
                <div style="font-size: 3rem;">📱</div>
                <h5 class="fw-bold mt-3" style="color: #d97706;">Teléfono</h5>
                <a href="tel:+5214491234567" class="text-decoration-none" style="color: #f59e0b;">
                    (449) 123-4567
                </a>
            </div>
        </div>
    </div>

    <!-- FAQ -->
    <h3 class="text-center fw-bold mb-4" style="color: #1e3a8a;">💡 Preguntas Frecuentes</h3>
    <div class="row">
        <div class="col-md-6 mb-3">
            <div class="faq-item">
                <div class="faq-question">⏱️ ¿Cuánto tiempo tarda en llegar?</div>
                <p class="text-muted mb-0">Normalmente respondemos en menos de 24 horas. Recibirás todo por correo electrónico y WhatsApp.</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="faq-item">
                <div class="faq-question">💵 ¿Realmente es gratis?</div>
                <p class="text-muted mb-0">Sí, 100% gratis. Sin cargos ocultos, sin suscripciones, sin tarjeta de crédito.</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="faq-item">
                <div class="faq-question">💻 ¿Necesito instalar algo?</div>
                <p class="text-muted mb-0">No. Solo abre el archivo HTML en cualquier navegador moderno (Chrome, Firefox, Edge, Safari).</p>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="faq-item">
                <div class="faq-question">🏢 ¿Puedo usarla comercialmente?</div>
                <p class="text-muted mb-0">Sí, puedes usarla para evaluar cualquier proyecto real sin restricciones.</p>
            </div>
        </div>
    </div>

</asp:Content>