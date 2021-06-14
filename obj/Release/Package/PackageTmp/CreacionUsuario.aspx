<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreacionUsuario.aspx.cs" Inherits="ReachSystem.CreacionUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
        <p><h2>Crear Usuario</h2></p>
            <div class="fila col10L">
                <input class="formulario" placeholder="Nombre (Juan)" id="Nombre" type="text"  runat="server"/>            
            </div>
        <div class="fila col10L">
                <input class="formulario" placeholder="Apellido (Perez)" id="Text2" type="text"  runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Empresa (Tarrago Brands)" id="Apellido" type="text"  runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Email (juan@gmail.com)" id="Correo" type="email"  runat="server"/>            
            </div>
            <%--<div class="fila col10L">
                <input class="formulario" placeholder="Télefono (555 555555)" id="Telefono" type="text" maxlength="11"  runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Dirección (Valencia, Calle Libra #55)" id="Dirección" type="text"  runat="server"/>            
            </div>--%>
            <div class="fila col10L">
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="formulario" >
                    <asp:ListItem>PERFIL</asp:ListItem>
                    <asp:ListItem>CLIENTE</asp:ListItem>
                    <asp:ListItem>ADMIN</asp:ListItem>                    
                </asp:DropDownList>                
            </div>
           <%-- <div class="fila col10L">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formulario" >
                    <asp:ListItem>IDIOMA</asp:ListItem>
                    <asp:ListItem>Bulgarian</asp:ListItem>
                    <asp:ListItem>Dansk</asp:ListItem>
                    <asp:ListItem>Eesti keel</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Español</asp:ListItem>
                    <asp:ListItem>Français</asp:ListItem>
                    <asp:ListItem>Deutsch</asp:ListItem>
                    <asp:ListItem>Gaeilge</asp:ListItem>
                    <asp:ListItem>Greek</asp:ListItem>
                    <asp:ListItem>Hrvatski Jezik</asp:ListItem>
                    <asp:ListItem>Italiano</asp:ListItem>
                    <asp:ListItem>Latviešu</asp:ListItem>
                    <asp:ListItem>Lietuvių</asp:ListItem>
                    <asp:ListItem>Magyar</asp:ListItem>
                    <asp:ListItem>Malti</asp:ListItem>
                    <asp:ListItem>Nederlands</asp:ListItem>
                    <asp:ListItem>Norsk</asp:ListItem>
                    <asp:ListItem>Polski</asp:ListItem>
                    <asp:ListItem>Português</asp:ListItem>
                    <asp:ListItem>Română</asp:ListItem>
                    <asp:ListItem>Russian</asp:ListItem>
                    <asp:ListItem>Slovenčina</asp:ListItem>
                    <asp:ListItem>Slovenščina</asp:ListItem>
                    <asp:ListItem>Suomi</asp:ListItem>
                    <asp:ListItem>Svenska</asp:ListItem>
                    <asp:ListItem>Türkçe</asp:ListItem>
                    <asp:ListItem>Čeština</asp:ListItem>
                </asp:DropDownList>                
            </div>--%>
            <div class="fila col10L">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="formulario" >
                    <asp:ListItem>PAIS</asp:ListItem>
                    <asp:ListItem>ALEMANIA</asp:ListItem>
                    <asp:ListItem>AUSTRIA</asp:ListItem>
                    <asp:ListItem>BÉLGICA</asp:ListItem>
                    <asp:ListItem>BULGARIA</asp:ListItem>
                    <asp:ListItem>CHIPRE</asp:ListItem>
                    <asp:ListItem>CROACIA</asp:ListItem>
                    <asp:ListItem>DINAMARCA</asp:ListItem>
                    <asp:ListItem>ESLOVENIA</asp:ListItem>
                    <asp:ListItem>ESPAÑA</asp:ListItem>
                    <asp:ListItem>ESTONIA</asp:ListItem>
                    <asp:ListItem>FINLANDIA</asp:ListItem>
                    <asp:ListItem>FRANCIA</asp:ListItem>
                    <asp:ListItem>GRECIA</asp:ListItem>
                    <asp:ListItem>HUNGRÍA</asp:ListItem>
                    <asp:ListItem>IRLANDA</asp:ListItem>
                    <asp:ListItem>ITALIA</asp:ListItem>
                    <asp:ListItem>LETONIA</asp:ListItem>
                    <asp:ListItem>LITUANIA</asp:ListItem>
                    <asp:ListItem>LUXEMBURGO</asp:ListItem>
                    <asp:ListItem>MALTA</asp:ListItem>
                    <asp:ListItem>PAÍSES BAJOS</asp:ListItem>
                    <asp:ListItem>POLONIA</asp:ListItem>
                    <asp:ListItem>PORTUGAL</asp:ListItem>
                    <asp:ListItem>REPÚBLICA CHECA</asp:ListItem>
                    <asp:ListItem>REPÚBLICA ESLOVACA</asp:ListItem>
                    <asp:ListItem>RUMANÍA</asp:ListItem>
                    <asp:ListItem>SUECIA</asp:ListItem>                    
                </asp:DropDownList>                
            </div>
            <%--<div class="fila col10L">
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="formulario" >
                    <asp:ListItem>IDIOMA DE ORIGEN</asp:ListItem>
                    <asp:ListItem>Bulgarian</asp:ListItem>
                    <asp:ListItem>Dansk</asp:ListItem>
                    <asp:ListItem>Eesti keel</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Español</asp:ListItem>
                    <asp:ListItem>Français</asp:ListItem>
                    <asp:ListItem>Deutsch</asp:ListItem>
                    <asp:ListItem>Gaeilge</asp:ListItem>
                    <asp:ListItem>Greek</asp:ListItem>
                    <asp:ListItem>Hrvatski Jezik</asp:ListItem>
                    <asp:ListItem>Italiano</asp:ListItem>
                    <asp:ListItem>Latviešu</asp:ListItem>
                    <asp:ListItem>Lietuvių</asp:ListItem>
                    <asp:ListItem>Magyar</asp:ListItem>
                    <asp:ListItem>Malti</asp:ListItem>
                    <asp:ListItem>Nederlands</asp:ListItem>
                    <asp:ListItem>Norsk</asp:ListItem>
                    <asp:ListItem>Polski</asp:ListItem>
                    <asp:ListItem>Português</asp:ListItem>
                    <asp:ListItem>Română</asp:ListItem>
                    <asp:ListItem>Russian</asp:ListItem>
                    <asp:ListItem>Slovenčina</asp:ListItem>
                    <asp:ListItem>Slovenščina</asp:ListItem>
                    <asp:ListItem>Suomi</asp:ListItem>
                    <asp:ListItem>Svenska</asp:ListItem>
                    <asp:ListItem>Türkçe</asp:ListItem>
                    <asp:ListItem>Čeština</asp:ListItem>
                </asp:DropDownList>                
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Empresa De Origen(Tarrago Brands)" id="Text1" type="text"  runat="server"/>            
            </div>--%>
            <div class="fila col10L">
                <input class="formulario" placeholder="Contraseña" id="Contraseña" type="password"  runat="server"/>            
            </div>                                  
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="REGISTRARME" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="CREAR USUARIO"/>            
            </div>
        </div>
            <br />
            <br />     
</asp:Content>
