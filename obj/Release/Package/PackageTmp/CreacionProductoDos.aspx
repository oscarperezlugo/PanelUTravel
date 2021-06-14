<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreacionProductoDos.aspx.cs" Inherits="ReachSystem.CreacionProductoDos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
        <p><h2>Crear Producto - PASO 2</h2></p>
        <p><h2 style="color: #FF0000">CARGA DE ARCHIVOS POR IDIOMA</h2></p>
     </div>
            <div class="tabla fila col16L">                
                    <table>
                        <tr>
                            <td><asp:Label ID="Label2" runat="server" Text="Label" CssClass="formularioDos">Bulgarian </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload2" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label1" runat="server" Text="Label" CssClass="formularioDos">Dansk </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload1" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Label" CssClass="formularioDos">Eesti keel </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload3" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label4" runat="server" Text="Label" CssClass="formularioDos">English </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload4" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="Label" CssClass="formularioDos">Español </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload5" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label6" runat="server" Text="Label" CssClass="formularioDos">Français </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload6" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label7" runat="server" Text="Label" CssClass="formularioDos">Deutsch </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload7" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label8" runat="server" Text="Label" CssClass="formularioDos">Gaeilge </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload8" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label9" runat="server" Text="Label" CssClass="formularioDos">Greek </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload9" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label10" runat="server" Text="Label" CssClass="formularioDos">Hrvatski Jezik </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload10" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label11" runat="server" Text="Label" CssClass="formularioDos">Italiano </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload11" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label12" runat="server" Text="Label" CssClass="formularioDos">Latviešu </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload12" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label13" runat="server" Text="Label" CssClass="formularioDos">Lietuvių </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload13" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label14" runat="server" Text="Label" CssClass="formularioDos">Magyar </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload14" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label15" runat="server" Text="Label" CssClass="formularioDos">Malti </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload15" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label16" runat="server" Text="Label" CssClass="formularioDos">Nederlands </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload16" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label17" runat="server" Text="Label" CssClass="formularioDos">Norsk </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload17" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label18" runat="server" Text="Label" CssClass="formularioDos">Polski </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload18" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label19" runat="server" Text="Label" CssClass="formularioDos">Português </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload19" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label20" runat="server" Text="Label" CssClass="formularioDos">Română </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload20" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label21" runat="server" Text="Label" CssClass="formularioDos">Russian </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload21" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label22" runat="server" Text="Label" CssClass="formularioDos">Slovenčina </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload22" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label23" runat="server" Text="Label" CssClass="formularioDos">Slovenščina </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload23" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label24" runat="server" Text="Label" CssClass="formularioDos">Suomi </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload24" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label25" runat="server" Text="Label" CssClass="formularioDos">Svenska </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload25" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label26" runat="server" Text="Label" CssClass="formularioDos">Türkçe </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload26" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label27" runat="server" Text="Label" CssClass="formularioDos">Čeština </asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload27" runat="server" CssClass="formularioDos"/></td>                            
                        </tr>
                    </table>                                                         
            </div> 
    <div class="baseform">
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="REGISTRARME" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="PUBLICAR PRODUCTO"/>            
            </div>
        </div>
            <br />
            <br />     
</asp:Content>
