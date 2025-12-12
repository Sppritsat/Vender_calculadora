<%@ Page Title="Panel de Administración" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="Crud_WebForms.Administrador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="p-4 mb-4" style="background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%); color: white; border-radius: 15px;">
        <h1 class="display-5 fw-bold mb-1">📋 Panel de Administración de Solicitudes</h1>
        <p class="lead">Gestión de las solicitudes recibidas en la página web.</p>
    </div>

    <div class="row mb-4 p-3 bg-light rounded shadow-sm border">
        <h5 class="fw-bold mb-3">Opciones de Filtrado Avanzado</h5>

        <div class="col-md-4 mb-3">
            <label for="txtBuscarEmail" class="form-label">Buscar por Email:</label>
            <asp:TextBox ID="txtBuscarEmail" runat="server" CssClass="form-control" placeholder="juan@ejemplo.com"></asp:TextBox>
        </div>

        <div class="col-md-4 mb-3">
            <label for="ddlOcupacionFiltro" class="form-label">Filtrar por Ocupación:</label>
            <asp:DropDownList ID="ddlOcupacionFiltro" runat="server" CssClass="form-select" EnableViewState="true">
                <asp:ListItem Text="-- Mostrar Todas las Ocupaciones --" Value=""></asp:ListItem> 
            </asp:DropDownList>
        </div>

        <div class="col-md-4 mb-3">
            <label for="txtBuscarUso" class="form-label">Buscar por Palabra Clave (Uso):</label>
            <asp:TextBox ID="txtBuscarUso" runat="server" CssClass="form-control" placeholder="Ej: 'viabilidad' o 'proyecto'"></asp:TextBox>
        </div>

        <div class="col-md-3 d-grid">
            <asp:Button ID="btnBuscar" runat="server" Text="🔎 Aplicar Filtros" 
                        CssClass="btn btn-primary mt-3" OnClick="btnBuscar_Click" />
        </div>
        <div class="col-md-3 d-grid">
            <asp:Button ID="btnRecargar" runat="server" Text="🔄 Recargar Todos" 
                        CssClass="btn btn-outline-secondary mt-3" OnClick="btnRecargar_Click" CausesValidation="False" />
        </div>
    </div>

    <div class="table-responsive"> 
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br />
        
        <asp:GridView ID="gvSolicitudes" 
                      runat="server" 
                      Width="100%" 
                      AllowPaging="True" 
                      PageSize="10"
                      AutoGenerateColumns="False" 
                      CssClass="table table-hover table-striped table-bordered mt-3 shadow-sm" 
                      HeaderStyle-CssClass="table-dark fw-bold"
                      AlternatingRowStyle-BackColor="#f8f9fa"
                      EmptyDataText="No hay solicitudes registradas actualmente.">
            
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ItemStyle-Width="50px" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" ItemStyle-Width="15%" />
                <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="20%" />
                <asp:BoundField DataField="telefono" HeaderText="Teléfono" ItemStyle-Width="10%" />
                <asp:BoundField DataField="ocupacion" HeaderText="Ocupación" ItemStyle-Width="10%" />
                <asp:BoundField DataField="uso" HeaderText="Uso Principal" ItemStyle-Width="30%" />
                <asp:BoundField DataField="referencia" HeaderText="Referencia" ItemStyle-Width="10%" />
                <asp:BoundField DataField="fecha" HeaderText="Registro" ItemStyle-Width="150px" 
                                DataFormatString="{0:dd/MM/yyyy HH:mm}" />
                                
                <asp:TemplateField HeaderText="Acción">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnVer" runat="server" Text="Ver" CssClass="btn btn-sm btn-info me-2"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>