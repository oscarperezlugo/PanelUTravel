<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DescargaDos.aspx.cs" Inherits="ReachSystem.DescargaDos" %>

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
    <%--<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="nave fila col10L">
            <div class="col2L">
                <img id="logo" src="https://www.tarrago.com/wp-content/uploads/2019/07/logo-tarrago-web.png"/>
            </div>                       
        </nav>
        <div class="subnave"></div>
        <br />
        <br />
        <br />
        <div class="baseform">
             <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">
                        <asp:Label ID="Label6" runat="server" Text="Products" Style="font-weight: bold; font-size: 18px;"></asp:Label>
                    </div>
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">
                    <%--<div class="col10L">--%>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False" GridLines="None"  DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black"  CssClass="mGrid table table-responsive table-striped" PagerStyle-CssClass="pgr" margin-left="2%" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                <Columns>                    
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <%--<asp:BoundField DataField="Clase" HeaderText="Clase" SortExpression="Clase" />
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Clase" />
                    <asp:BoundField DataField="Idioma" HeaderText="Idioma" SortExpression="Idioma" />--%>
                    <asp:CommandField ShowSelectButton="True" SelectText="DESCARGAR" ButtonType="Button" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tarragoReachConnectionString %>" SelectCommand="SELECT Nombre, Clase, Codigo, Idioma FROM Productos WHERE (Idioma = @Idioma) AND (Clase = @Clase) AND (Nombre LIKE '%'+@Nombre+'%') OR (Idioma = @Idioma) AND (Clase = @Clase) AND (Codigo LIKE '%'+@Nombre+'%')">
                <SelectParameters>
                    <asp:CookieParameter CookieName="paramunoC" Name="Idioma" Type="String" />
                    <asp:CookieParameter CookieName="paramdosC" Name="Clase" Type="String" />
                    <asp:CookieParameter CookieName="paramtresC" Name="Nombre" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          </div> 
             </div>
        </div>
        </div>
        </div>
        <%--</div>--%>
    </form>
</body>
</html>
