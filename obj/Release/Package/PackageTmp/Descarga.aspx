<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Descarga.aspx.cs" Inherits="ReachSystem.Descarga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="Oscar Perez Lugo" content="Developer"/>
        <meta name="description"  content="Tarrago Brands"/>
        <meta name="keywords"  content="QUIMICOS"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>        
        <title>Tarrago Reach System</title>
        <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link href="Content/columnas.css" rel="stylesheet" />
        <link href="Content/Site.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="nave fila col10L">
            <div class="col2L">
                <img id="logo" src="https://www.tarrago.com/wp-content/uploads/2019/07/logo-tarrago-web.png"/>
            </div>                       
        </nav>
        <div class="subnave"/>
        <div >
            <br />
            <br />
            <br />
            <center><p><h2>Search Products by Name or Code</h2></p></center>
            <div class="fila col10L">                
               <center> <p class="nombrecierre"><h4 class="nombrecierre">Dear: <asp:Label class="nombrecierre" runat="server" ID="clientefactura"></asp:Label></h4></p></center>
                <div class="fila col10L">
                <center><input class="formulario" placeholder="Product / Code" id="Correo" type="text" required runat="server"/></center>            
            </div>   
               <center> <p><label class="titulocierre">Select your product class</label></p></center>
            </div>
            <center><input type="radio"  class="pickup" name="TipoVenta"  id="check" runat="server"/><label class="opcionescierre" >CLP </label><input type="radio"  class="pickupDOS" name="TipoVenta"  runat="server" id="pickup"/><label class="opcionescierre">GLP</label><input type="radio"  class="pickupTRES" name="TipoVenta"  runat="server" id="Radio1"/><label class="opcionescierre">CCR</label>
           
                <div class="metodo">
                    <p><label class="titulocierre">Select Language</label></p> 
                    
                    <table >
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="pagomivil1" runat="server"/><label class="opcionescierre" >Bulgarian      </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="zelle1" runat="server" /><label class="opcionescierre">Dansk          </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="paypal1" runat="server"/><label class="opcionescierre">Eesti keel     </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="efectivo1" runat="server"/><label class="opcionescierre">English        </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio2" runat="server"/><label class="opcionescierre">Español        </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="Radio3" runat="server" /><label class="opcionescierre">Français       </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio4" runat="server"/><label class="opcionescierre">Deutsch        </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio5" runat="server"/><label class="opcionescierre">Gaeilge        </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio6" runat="server"/><label class="opcionescierre">Greek          </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="Radio7" runat="server" /><label class="opcionescierre">Hrvatski Jezik </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio8" runat="server"/><label class="opcionescierre">Latviešu       </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio24" runat="server"/><label class="opcionescierre">Italiano      </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio9" runat="server"/><label class="opcionescierre">Lietuvių       </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio10" runat="server"/><label class="opcionescierre" >Magyar         </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="Radio11" runat="server" /><label class="opcionescierre">Malti          </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio12" runat="server"/><label class="opcionescierre">Nederlands     </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio13" runat="server"/><label class="opcionescierre">Norsk          </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio14" runat="server"/><label class="opcionescierre">Polski         </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="Radio15" runat="server" /><label class="opcionescierre">Português      </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio16" runat="server"/><label class="opcionescierre">Română         </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio17" runat="server"/><label class="opcionescierre">Russian        </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio18" runat="server"/><label class="opcionescierre">Slovenčina     </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="Radio19" runat="server" /><label class="opcionescierre">Slovenščina    </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio20" runat="server"/><label class="opcionescierre">Suomi          </label></td>
                        </tr>
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio21" runat="server"/><label class="opcionescierre">Svenska        </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio22" runat="server"/><label class="opcionescierre">Türkçe         </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="Radio23" runat="server" /><label class="opcionescierre">Čeština        </label></td>
                        </tr>
                    </table>                                                                                                                                                                                                                   
                <br />
                        <asp:Button class="botonsubmit" value="PAGADO" type="submit" runat="server" CssClass="botonsubmit" Text="NEXT" OnClick="Unnamed1_Click" />
                    
                </div>
                <div class="metodoDOS">
                    <p><label class="titulocierre">Select Language</label></p> 
                    
                    <table >                        
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio28" runat="server"/><label class="opcionescierre">English        </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio29" runat="server"/><label class="opcionescierre">Español        </label></td>                           
                        </tr>                        
                    </table>                                                                                                                                                                                                                   
                <br />
                        <asp:Button class="botonsubmit" value="PAGADO" type="submit" runat="server" CssClass="botonsubmit" Text="NEXT" OnClick="Unnamed1_Click" />
                    
                </div>
                <div class="metodoTRES">
                    <p><label class="titulocierre">Select Language</label></p> 
                    
                    <table >                        
                        <tr>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio25" runat="server"/><label class="opcionescierre">English        </label></td>
                            <td><input type="radio"  class="efectivo" name="Tipopag"  id="Radio26" runat="server"/><label class="opcionescierre">Español        </label></td>                           
                            <td><input type="radio"  class="efectivo" name="Tipopag" id="Radio27" runat="server" /><label class="opcionescierre">Français       </label></td>
                        </tr>                        
                    </table>                                                                                                                                                                                                                   
                <br />
                        <asp:Button class="botonsubmit" value="PAGADO" type="submit" runat="server" CssClass="botonsubmit" Text="NEXT" OnClick="Unnamed1_Click" />
                    
                </div>
            </center>
          </div>   
    </form>
</body>
</html>
