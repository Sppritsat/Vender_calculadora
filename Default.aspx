<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Crud_WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- Hero Section -->
    <div class="text-center p-5 mb-4" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border-radius: 15px; color: white;">
        <h1 class="display-4 fw-bold">📊 Calculadora de Proyectos Financieros</h1>
        <p class="lead">La Herramienta Definitiva para Análisis Empresarial</p>
        <hr class="my-4" style="border-color: rgba(255,255,255,0.3);">
        <p class="fs-5">Planifica, analiza y proyecta tus finanzas como un profesional</p>
        <a class="btn btn-light btn-lg me-2" href="Solicitar.aspx" role="button">🚀 Obtener Gratis</a>
        <a class="btn btn-outline-light btn-lg" href="Caracteristicas.aspx" role="button">📖 Ver Características</a>
    </div>

    <!-- Statistics Cards -->
    <div class="row mb-4">
        <div class="col-md-3 mb-3">
            <div class="card text-center shadow-sm h-100 border-0" style="border-left: 5px solid #667eea;">
                <div class="card-body">
                    <div style="font-size: 3rem;">📑</div>
                    <h3 class="card-title" style="color: #667eea;">12</h3>
                    <p class="card-text text-muted">Módulos Integrados</p>
                </div>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="card text-center shadow-sm h-100 border-0" style="border-left: 5px solid #764ba2;">
                <div class="card-body">
                    <div style="font-size: 3rem;">📅</div>
                    <h3 class="card-title" style="color: #764ba2;">5 Años</h3>
                    <p class="card-text text-muted">Proyección Financiera</p>
                </div>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="card text-center shadow-sm h-100 border-0" style="border-left: 5px solid #28a745;">
                <div class="card-body">
                    <div style="font-size: 3rem;">⚡</div>
                    <h3 class="card-title" style="color: #28a745;">100%</h3>
                    <p class="card-text text-muted">Cálculos Automáticos</p>
                </div>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="card text-center shadow-sm h-100 border-0" style="border-left: 5px solid #ffc107;">
                <div class="card-body">
                    <div style="font-size: 3rem;">💰</div>
                    <h3 class="card-title" style="color: #ffc107;">GRATIS</h3>
                    <p class="card-text text-muted">Versión Completa</p>
                </div>
            </div>
        </div>
    </div>

    <!-- What is it Section -->
    <div class="mb-5">
        <div class="text-center mb-4">
            <h2 class="fw-bold" style="color: #667eea;">¿Qué es la Calculadora de Proyectos Financieros?</h2>
            <p class="lead text-muted">Una aplicación web profesional para análisis financiero empresarial</p>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <div class="card h-100 border-0" style="background: linear-gradient(135deg, #f3e7ff 0%, #e3d5ff 100%);">
                    <div class="card-body">
                        <h3 class="card-title fw-bold" style="color: #667eea;">🎯 ¿Para quién es?</h3>
                        <ul class="list-unstyled">
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">👨‍💼</span>
                                <strong>Emprendedores:</strong> Valida tu idea de negocio
                            </li>
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">🎓</span>
                                <strong>Estudiantes:</strong> Proyectos académicos profesionales
                            </li>
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">📊</span>
                                <strong>Analistas:</strong> Evaluaciones rápidas y precisas
                            </li>
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">🏢</span>
                                <strong>PyMEs:</strong> Planificación de producción
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-3">
                <div class="card h-100 border-0" style="background: linear-gradient(135deg, #d4f4dd 0%, #c4e8d1 100%);">
                    <div class="card-body">
                        <h3 class="card-title fw-bold" style="color: #28a745;">✨ Beneficios Clave</h3>
                        <ul class="list-unstyled">
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">⚡</span>
                                <strong>Ahorra Tiempo:</strong> Cálculos instantáneos
                            </li>
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">🎨</span>
                                <strong>Fácil de Usar:</strong> Interfaz intuitiva
                            </li>
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">🔗</span>
                                <strong>Integrado:</strong> Datos conectados
                            </li>
                            <li class="mb-2">
                                <span style="font-size: 1.5rem;">💾</span>
                                <strong>Exportable:</strong> Guarda y comparte
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Quick Features -->
    <div class="mb-5">
        <div class="text-center mb-4">
            <h2 class="fw-bold" style="color: #667eea;">🚀 Módulos Principales</h2>
            <p class="text-muted">Herramientas integradas para análisis completo</p>
        </div>

        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="card h-100 shadow-sm border-0" style="border-top: 4px solid #667eea;">
                    <div class="card-body text-center">
                        <div style="font-size: 3rem;">📈</div>
                        <h5 class="card-title fw-bold" style="color: #667eea;">Plan de Mercado</h5>
                        <p class="card-text text-muted">Estima tu mercado meta con datos demográficos</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3">
                <div class="card h-100 shadow-sm border-0" style="border-top: 4px solid #764ba2;">
                    <div class="card-body text-center">
                        <div style="font-size: 3rem;">💰</div>
                        <h5 class="card-title fw-bold" style="color: #764ba2;">Presupuesto Ventas</h5>
                        <p class="card-text text-muted">Proyecta ingresos para 5 años</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3">
                <div class="card h-100 shadow-sm border-0" style="border-top: 4px solid #28a745;">
                    <div class="card-body text-center">
                        <div style="font-size: 3rem;">🏭</div>
                        <h5 class="card-title fw-bold" style="color: #28a745;">Producción</h5>
                        <p class="card-text text-muted">Optimiza unidades a producir</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3">
                <div class="card h-100 shadow-sm border-0" style="border-top: 4px solid #ffc107;">
                    <div class="card-body text-center">
                        <div style="font-size: 3rem;">🧾</div>
                        <h5 class="card-title fw-bold" style="color: #ffc107;">Materias Primas</h5>
                        <p class="card-text text-muted">Calcula consumo de insumos</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3">
                <div class="card h-100 shadow-sm border-0" style="border-top: 4px solid #dc3545;">
                    <div class="card-body text-center">
                        <div style="font-size: 3rem;">👷</div>
                        <h5 class="card-title fw-bold" style="color: #dc3545;">Mano de Obra</h5>
                        <p class="card-text text-muted">Presupuesta costos laborales</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3">
                <div class="card h-100 shadow-sm border-0" style="border-top: 4px solid #e91e63;">
                    <div class="card-body text-center">
                        <div style="font-size: 3rem;">💸</div>
                        <h5 class="card-title fw-bold" style="color: #e91e63;">Flujo de Efectivo</h5>
                        <p class="card-text text-muted">Proyecta entradas y salidas</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mt-3">
            <a href="Caracteristicas.aspx" class="text-decoration-none fw-bold" style="color: #667eea;">
                Ver todos los 12 módulos completos →
            </a>
        </div>
    </div>

    <!-- CTA Section -->
    <div class="text-center p-5 mb-4" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border-radius: 15px; color: white;">
        <h3 class="fw-bold">¿Listo para Obtener tu Calculadora?</h3>
        <p class="lead">Solicita acceso gratis y recibe la herramienta completa en tu correo</p>
        <a href="Solicitar.aspx" class="btn btn-light btn-lg">📝 Solicitar Acceso Gratis</a>
    </div>

    <!-- Project Info -->
    <div class="alert alert-info" role="alert">
        <h5 class="alert-heading">📚 Proyecto de Desarrollo Web</h5>
        <p>
            Esta calculadora fue desarrollada como una herramienta profesional para análisis financiero empresarial.
            Implementa 12 módulos integrados con cálculos automáticos en tiempo real.
        </p>
        <hr>
        <p class="mb-0">
            <strong>Tecnologías:</strong> HTML5, CSS (Tailwind/Bootstrap), JavaScript Vanilla | 
            <strong>Características:</strong> 100% responsive, sin instalación, datos seguros
        </p>
    </div>

</asp:Content>