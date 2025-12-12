<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diagnostico.aspx.cs" Inherits="Crud_WebForms.Diagnostico" %>

<!DOCTYPE html>
<html>
<head>
    <title>Diagnóstico de Filtros</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background: #f5f5f5;
        }
        .card {
            background: white;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .success { color: #10b981; font-weight: bold; }
        .error { color: #ef4444; font-weight: bold; }
        .warning { color: #f59e0b; font-weight: bold; }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #e5e7eb;
        }
        th {
            background: #1e3a8a;
            color: white;
            font-weight: 600;
        }
        tr:hover {
            background: #f9fafb;
        }
        .code {
            background: #1f2937;
            color: #10b981;
            padding: 15px;
            border-radius: 5px;
            font-family: 'Courier New', monospace;
            overflow-x: auto;
            margin: 10px 0;
        }
        h2 {
            color: #1e3a8a;
            border-bottom: 3px solid #3b82f6;
            padding-bottom: 10px;
        }
        .btn {
            background: #3b82f6;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px;
        }
        .btn:hover {
            background: #1e3a8a;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>🔍 Diagnóstico Completo del Sistema de Filtros</h1>
        
        <!-- SECCIÓN 1: Ocupaciones en BD -->
        <div class="card">
            <h2>📊 1. Ocupaciones en la Base de Datos</h2>
            <asp:Label ID="lblOcupacionesBD" runat="server"></asp:Label>
        </div>

        <!-- SECCIÓN 2: Test de Filtro -->
        <div class="card">
            <h2>🧪 2. Probar Filtro de Ocupación</h2>
            <p>Selecciona una ocupación para probar el filtro:</p>
            
            <asp:DropDownList ID="ddlTestOcupacion" runat="server" CssClass="form-select" style="padding: 10px; font-size: 16px; margin: 10px 0;">
                <asp:ListItem Text="-- Selecciona --" Value=""></asp:ListItem>
            </asp:DropDownList>
            
            <asp:Button ID="btnProbarFiltro" runat="server" Text="🔎 Probar Filtro" 
                        CssClass="btn" OnClick="btnProbarFiltro_Click" />
            
            <asp:Label ID="lblResultadoFiltro" runat="server"></asp:Label>
        </div>

        <!-- SECCIÓN 3: Query SQL Generado -->
        <div class="card">
            <h2>💾 3. Query SQL Ejecutado</h2>
            <asp:Label ID="lblQuerySQL" runat="server"></asp:Label>
        </div>

        <!-- SECCIÓN 4: Comparación de Valores -->
        <div class="card">
            <h2>🔬 4. Comparación de Valores (Byte a Byte)</h2>
            <asp:Label ID="lblComparacion" runat="server"></asp:Label>
        </div>

        <!-- SECCIÓN 5: Test Directo SQL -->
        <div class="card">
            <h2>⚡ 5. Test SQL Directo</h2>
            <asp:Button ID="btnTestSQL" runat="server" Text="🚀 Ejecutar Test SQL" 
                        CssClass="btn" OnClick="btnTestSQL_Click" />
            <asp:Label ID="lblTestSQL" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>