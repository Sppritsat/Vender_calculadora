<%@ Page Title="Características" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Caracteristicas.aspx.cs" Inherits="Crud_WebForms.Caracteristicas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .hero-section {
            background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
            color: white;
            padding: 3rem 2rem;
            border-radius: 15px;
            margin-bottom: 3rem;
            box-shadow: 0 10px 30px rgba(30, 58, 138, 0.3);
        }

        .module-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            margin-bottom: 2rem;
            overflow: hidden;
        }

        .module-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }

        .module-header {
            padding: 1.5rem;
            border-bottom: 3px solid;
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .module-icon {
            font-size: 3rem;
            flex-shrink: 0;
        }

        .module-title {
            font-size: 1.5rem;
            font-weight: 700;
            margin: 0;
        }

        .module-body {
            padding: 1.5rem;
        }

        .feature-box {
            background: #f8f9fa;
            padding: 1rem;
            border-radius: 10px;
            margin-bottom: 0.75rem;
            border-left: 4px solid;
        }

        .feature-box.input {
            border-left-color: #3b82f6;
            background: linear-gradient(135deg, #eff6ff 0%, #dbeafe 100%);
        }

        .feature-box.output {
            border-left-color: #10b981;
            background: linear-gradient(135deg, #ecfdf5 0%, #d1fae5 100%);
        }

        .feature-box.formula {
            border-left-color: #f59e0b;
            background: linear-gradient(135deg, #fffbeb 0%, #fef3c7 100%);
        }

        .feature-badge {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 20px;
            font-size: 0.75rem;
            font-weight: 700;
            margin-right: 0.5rem;
        }

        .quick-modules {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .quick-module-card {
            background: white;
            border-radius: 12px;
            padding: 1.5rem;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            border-top: 4px solid;
        }

        .quick-module-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
        }

        .cta-section {
            background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
            color: white;
            padding: 3rem 2rem;
            border-radius: 15px;
            text-align: center;
            margin-top: 3rem;
        }

        .stat-number {
            font-size: 2.5rem;
            font-weight: 700;
            color: #f59e0b;
        }
    </style>

    <!-- Hero Section -->
    <div class="hero-section text-center">
        <h1 class="display-4 fw-bold mb-3">✨ Suite Completa de Análisis Financiero</h1>
        <p class="lead mb-4">12 módulos profesionales integrados para proyecciones empresariales precisas</p>
        <div class="row justify-content-center">
            <div class="col-md-3 mb-3">
                <div class="stat-number">12</div>
                <div>Módulos</div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="stat-number">5</div>
                <div>Años de Proyección</div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="stat-number">100%</div>
                <div>Automatizado</div>
            </div>
        </div>
    </div>

    <!-- Módulo 1: Plan de Mercado -->
    <div class="module-card">
        <div class="module-header" style="border-bottom-color: #3b82f6; background: linear-gradient(135deg, #eff6ff 0%, #dbeafe 100%);">
            <div class="module-icon">📈</div>
            <div>
                <h2 class="module-title" style="color: #1e3a8a;">1. Plan de Mercado</h2>
                <p class="mb-0" style="color: #64748b;">Segmentación y estimación del mercado objetivo</p>
            </div>
        </div>
        <div class="module-body">
            <div class="feature-box input">
                <span class="feature-badge" style="background: #3b82f6; color: white;">📥 Entradas</span>
                <ul class="mb-0 mt-2">
                    <li>Población total del área de influencia</li>
                    <li>% del segmento objetivo (género, edad, NSE)</li>
                    <li>Rango de edad del mercado meta</li>
                    <li>% de población económicamente activa</li>
                </ul>
            </div>
            <div class="feature-box output">
                <span class="feature-badge" style="background: #10b981; color: white;">📤 Resultado</span>
                <p class="mb-0 mt-2"><strong>Mercado meta cuantificado:</strong> Número exacto de clientes potenciales para tu producto/servicio</p>
            </div>
        </div>
    </div>

    <!-- Módulo 2: Factores de Sensibilidad -->
    <div class="module-card">
        <div class="module-header" style="border-bottom-color: #8b5cf6; background: linear-gradient(135deg, #f5f3ff 0%, #ede9fe 100%);">
            <div class="module-icon">🎯</div>
            <div>
                <h2 class="module-title" style="color: #6b21a8;">2. Análisis de Sensibilidad</h2>
                <p class="mb-0" style="color: #64748b;">Proyección de crecimiento con escenarios múltiples</p>
            </div>
        </div>
        <div class="module-body">
            <div class="feature-box input">
                <span class="feature-badge" style="background: #8b5cf6; color: white;">📥 Variables</span>
                <ul class="mb-0 mt-2">
                    <li>% de participación de mercado esperada</li>
                    <li>Tasa de crecimiento poblacional anual</li>
                    <li>Incremento en demanda del producto (%)</li>
                </ul>
            </div>
            <div class="feature-box output">
                <span class="feature-badge" style="background: #10b981; color: white;">📤 Resultado</span>
                <p class="mb-0 mt-2"><strong>Proyección a 5 años:</strong> Mercado potencial ajustado por crecimiento y penetración</p>
            </div>
        </div>
    </div>

    <!-- Módulo 3: Presupuesto de Ventas -->
    <div class="module-card">
        <div class="module-header" style="border-bottom-color: #10b981; background: linear-gradient(135deg, #ecfdf5 0%, #d1fae5 100%);">
            <div class="module-icon">💰</div>
            <div>
                <h2 class="module-title" style="color: #047857;">3. Presupuesto de Ventas</h2>
                <p class="mb-0" style="color: #64748b;">Proyección de ingresos por ventas</p>
            </div>
        </div>
        <div class="module-body">
            <div class="feature-box input">
                <span class="feature-badge" style="background: #10b981; color: white;">📥 Datos</span>
                <ul class="mb-0 mt-2">
                    <li>Unidades a vender por año (5 periodos)</li>
                    <li>Precio unitario del producto/servicio</li>
                </ul>
            </div>
            <div class="feature-box formula">
                <span class="feature-badge" style="background: #f59e0b; color: white;">🧮 Cálculo</span>
                <code class="d-block mt-2 p-2 bg-white rounded">Ventas Anuales = Unidades × Precio Unitario</code>
            </div>
            <div class="feature-box output">
                <span class="feature-badge" style="background: #10b981; color: white;">📤 Resultado</span>
                <p class="mb-0 mt-2"><strong>Ingresos proyectados:</strong> Ventas en dinero para cada año del proyecto</p>
            </div>
        </div>
    </div>

    <!-- Módulo 4: Presupuesto de Producción -->
    <div class="module-card">
        <div class="module-header" style="border-bottom-color: #06b6d4; background: linear-gradient(135deg, #ecfeff 0%, #cffafe 100%);">
            <div class="module-icon">🏭</div>
            <div>
                <h2 class="module-title" style="color: #0e7490;">4. Presupuesto de Producción</h2>
                <p class="mb-0" style="color: #64748b;">Planificación de unidades a fabricar</p>
            </div>
        </div>
        <div class="module-body">
            <div class="feature-box input">
                <span class="feature-badge" style="background: #06b6d4; color: white;">📥 Parámetros</span>
                <ul class="mb-0 mt-2">
                    <li>Ventas proyectadas (del módulo anterior)</li>
                    <li>Inventario final deseado</li>
                    <li>Inventario inicial disponible</li>
                </ul>
            </div>
            <div class="feature-box formula">
                <span class="feature-badge" style="background: #f59e0b; color: white;">🧮 Fórmula</span>
                <code class="d-block mt-2 p-2 bg-white rounded">Producción = Ventas + Inv. Final - Inv. Inicial</code>
            </div>
            <div class="feature-box output">
                <span class="feature-badge" style="background: #10b981; color: white;">📤 Resultado</span>
                <p class="mb-0 mt-2"><strong>Plan de producción:</strong> Unidades exactas a fabricar cada año</p>
            </div>
        </div>
    </div>

    <!-- Módulo 5: Materias Primas -->
    <div class="module-card">
        <div class="module-header" style="border-bottom-color: #f59e0b; background: linear-gradient(135deg, #fffbeb 0%, #fef3c7 100%);">
            <div class="module-icon">🧾</div>
            <div>
                <h2 class="module-title" style="color: #d97706;">5. Presupuesto de Materias Primas</h2>
                <p class="mb-0" style="color: #64748b;">Consumo de insumos y materiales</p>
            </div>
        </div>
        <div class="module-body">
            <div class="feature-box input">
                <span class="feature-badge" style="background: #f59e0b; color: white;">📥 Receta</span>
                <ul class="mb-0 mt-2">
                    <li>Unidades a producir (del módulo anterior)</li>
                    <li>Lista de materias primas requeridas</li>
                    <li>Cantidad de cada MP por unidad producida</li>
                </ul>
            </div>
            <div class="feature-box formula">
                <span class="feature-badge" style="background: #f59e0b; color: white;">🧮 Cálculo</span>
                <code class="d-block mt-2 p-2 bg-white rounded">Consumo Total MP = Cantidad por Unidad × Unidades Producidas</code>
            </div>
            <div class="feature-box output">
                <span class="feature-badge" style="background: #10b981; color: white;">📤 Resultado</span>
                <p class="mb-0 mt-2"><strong>Requerimientos:</strong> Consumo total de cada materia prima por año</p>
            </div>
        </div>
    </div>

    <!-- Módulo 6: Compras -->
    <div class="module-card">
        <div class="module-header" style="border-bottom-color: #ef4444; background: linear-gradient(135deg, #fef2f2 0%, #fee2e2 100%);">
            <div class="module-icon">🛒</div>
            <div>
                <h2 class="module-title" style="color: #dc2626;">6. Presupuesto de Compras</h2>
                <p class="mb-0" style="color: #64748b;">Planificación de adquisiciones de MP</p>
            </div>
        </div>
        <div class="module-body">
            <div class="feature-box input">
                <span class="feature-badge" style="background: #ef4444; color: white;">📥 Datos</span>
                <ul class="mb-0 mt-2">
                    <li>Requerimiento total de MP (módulo anterior)</li>
                    <li>Inventario inicial y final de cada MP</li>
                    <li>Costo unitario de cada materia prima</li>
                </ul>
            </div>
            <div class="feature-box formula">
                <span class="feature-badge" style="background: #f59e0b; color: white;">🧮 Fórmula</span>
                <code class="d-block mt-2 p-2 bg-white rounded">Compras = Requerimiento + Inv. Final - Inv. Inicial</code>
                <code class="d-block mt-2 p-2 bg-white rounded">Costo Total = Compras × Costo Unitario</code>
            </div>
            <div class="feature-box output">
                <span class="feature-badge" style="background: #10b981; color: white;">📤 Resultado</span>
                <p class="mb-0 mt-2"><strong>Presupuesto:</strong> Costo total de compras de MP por año</p>
            </div>
        </div>
    </div>

    <!-- Resumen de Módulos Restantes -->
    <h2 class="text-center fw-bold mt-5 mb-4" style="color: #1e3a8a;">📊 Módulos Complementarios</h2>
    
    <div class="quick-modules">
        <div class="quick-module-card" style="border-top-color: #ec4899;">
            <div class="module-icon">💎</div>
            <h5 class="fw-bold mt-3" style="color: #ec4899;">7. Valuación de Inventarios</h5>
            <p class="text-muted mb-0">Cálculo del valor monetario de inventarios finales</p>
        </div>

        <div class="quick-module-card" style="border-top-color: #06b6d4;">
            <div class="module-icon">👷</div>
            <h5 class="fw-bold mt-3" style="color: #06b6d4;">8. Mano de Obra Directa</h5>
            <p class="text-muted mb-0">Presupuesto de costos laborales de producción</p>
        </div>

        <div class="quick-module-card" style="border-top-color: #f97316;">
            <div class="module-icon">🏢</div>
            <h5 class="fw-bold mt-3" style="color: #f97316;">9. Gastos Indirectos</h5>
            <p class="text-muted mb-0">Costos fijos, variables e inflación</p>
        </div>

        <div class="quick-module-card" style="border-top-color: #8b5cf6;">
            <div class="module-icon">🏗️</div>
            <h5 class="fw-bold mt-3" style="color: #8b5cf6;">10. Costo de Producción</h5>
            <p class="text-muted mb-0">Integración: MP + MO + Gastos Indirectos</p>
        </div>

        <div class="quick-module-card" style="border-top-color: #db2777;">
            <div class="module-icon">📋</div>
            <h5 class="fw-bold mt-3" style="color: #db2777;">11. Gastos de Operación</h5>
            <p class="text-muted mb-0">Administración, ventas y distribución</p>
        </div>

        <div class="quick-module-card" style="border-top-color: #10b981;">
            <div class="module-icon">💸</div>
            <h5 class="fw-bold mt-3" style="color: #10b981;">12. Flujo de Efectivo</h5>
            <p class="text-muted mb-0">Proyección de entradas, salidas y saldos</p>
        </div>
    </div>

    <!-- CTA Final -->
    <div class="cta-section">
        <h2 class="fw-bold mb-3">🚀 Comienza Tu Análisis Financiero Hoy</h2>
        <p class="lead mb-4">Obtén acceso inmediato a los 12 módulos profesionales</p>
        <a href="Solicitar.aspx" class="btn btn-light btn-lg px-5 py-3" style="font-weight: 700;">
            📝 Solicitar Acceso Gratis
        </a>
        <p class="mt-3 mb-0" style="font-size: 0.9rem; opacity: 0.9;">
            ⚡ Sin costo | Sin tarjeta de crédito | Respuesta en 24 horas
        </p>
    </div>

</asp:Content>