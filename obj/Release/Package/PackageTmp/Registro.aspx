<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ReachSystem.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="Oscar Perez Lugo" content="Developer"/>
        <meta name="description"  content="Tarrago Brands"/>
        <meta name="keywords"  content="QUIMICOS"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>        
        <title>UTRAVEL</title>
        <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link href="Content/columnas.css" rel="stylesheet" />
        <link href="Content/Site.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="nave fila col10L">
            <div class="col2L">
                <img id="logo" src="https://1.bp.blogspot.com/-79y5WSgVBPc/YCLFsxu_zGI/AAAAAAAAPn8/VIxXQpeQJPQthNIUj6q_xw4NpHVNfZL9ACLcBGAsYHQ/s16000/logout2.png"/>
            </div>                       
        </nav>
        <div class="subnave">
            </div>
        <div class="baseform">
            <br />
            <br />
            <p><h2>Sign Up</h2></p>
            <div class="fila col10L">
                <input class="formulario" placeholder="Name (John)" id="Nombre" type="text" required runat="server"/>            
            </div>
            <%--<div class="fila col10L">
                <input class="formulario" placeholder="Surname (Pierce)" id="Text2" type="text" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Company (Tarrago Brands)" id="Apellido" type="text" required runat="server"/>            
            </div>--%>
            <div class="fila col10L">
                <input class="formulario" placeholder="Email (john@gmail.com)" id="Correo" type="email" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Télefono (555 555555)" id="Telefono" type="text" maxlength="11" required runat="server"/>            
            </div>
            <%--<div class="fila col10L">
                <input class="formulario" placeholder="Dirección (Valencia, Calle Libra #55)" id="Dirección" type="text" required runat="server"/>            
            </div>--%>
            <%--<div class="fila col10L">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formulario" required>
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
            <%--<div class="fila col10L">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="formulario" required>
                    <asp:ListItem>COUNTRY</asp:ListItem>
                    <asp:ListItem>AUSTRIA</asp:ListItem>
                    <asp:ListItem>BELGIUM</asp:ListItem>
                    <asp:ListItem>BULGARIA</asp:ListItem>
                    <asp:ListItem>CROATIA</asp:ListItem>
                    <asp:ListItem>CYPRUS</asp:ListItem>
                    <asp:ListItem>CZECH REPUBLIC</asp:ListItem>
                    <asp:ListItem>DENMARK</asp:ListItem>
                    <asp:ListItem>ESTONIA</asp:ListItem>
                    <asp:ListItem>FINLAND</asp:ListItem>
                    <asp:ListItem>FRANCE</asp:ListItem>
                    <asp:ListItem>GERMANY</asp:ListItem>
                    <asp:ListItem>GREECE</asp:ListItem>
                    <asp:ListItem>HUNGARY</asp:ListItem>
                    <asp:ListItem>IRELAND</asp:ListItem>
                    <asp:ListItem>ITALY</asp:ListItem>
                    <asp:ListItem>LATVIA</asp:ListItem>
                    <asp:ListItem>LITHUANIA</asp:ListItem>
                    <asp:ListItem>LUXEMBOURG</asp:ListItem>
                    <asp:ListItem>MALT</asp:ListItem>
                    <asp:ListItem>NETHERLANDS</asp:ListItem>
                    <asp:ListItem>POLAND</asp:ListItem>
                    <asp:ListItem>PORTUGAL</asp:ListItem>
                    <asp:ListItem>ROMANIA</asp:ListItem>
                    <asp:ListItem>SLOVAK REPUBLIC</asp:ListItem>
                    <asp:ListItem>SLOVENIA</asp:ListItem>
                    <asp:ListItem>SPAIN</asp:ListItem>
                    <asp:ListItem>SWEDEN</asp:ListItem>
                </asp:DropDownList>                
            </div>--%>
            <%--<div class="fila col10L">
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="formulario" required>
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
            </div>--%>
            <%--<div class="fila col10L">
                <input class="formulario" placeholder="Empresa De Origen(Tarrago Brands)" id="Text1" type="text" required runat="server"/>            
            </div>--%>
            <div class="fila col10L">
                <input class="formulario" placeholder="Password" id="Contraseña" type="password" required runat="server"/>            
            </div>
            <div class="fila col10L">
                <input class="formulario" placeholder="Repeat Password" id="Repetir" type="password" required runat="server"/>  
                <%--<center><div class="g-recaptcha" data-sitekey="6LefeNwZAAAAAMIRMWRYV7Ir7gJbOQ1ZyaHpJc47"></div></center>--%>
            </div>           
            <p><input type="checkbox" required> I agree to the Terms of Service & <a class="enlaces" href="https://www.tarrago.com/privacy-policy/" target="_blank">Privacy Policy</a></p>
            <p><a class="enlaces" href="Login.aspx">Do you already have an account? Login from Here</a></p>
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="REGISTRARME" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="Sign up"/>            
            </div>
            <br />
            <br />
        </div>        
    </form>
</body>
</html>
