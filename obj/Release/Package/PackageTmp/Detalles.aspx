<%@ Page Title="UTRAVEL" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="ReachSystem.Detalles" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">   
    <center><input class="formulario" placeholder="Orden" id="Correo" type="text" runat="server"/>  
                <asp:Button class="botonsubmit" value="REGISTRARME" type="submit" runat="server" CssClass="botonsubmit" Text="BUSCAR VIAJE" OnClick="Unnamed1_Click" /></center>
    <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">
                        <asp:Label ID="Label6" runat="server" Text="VIAJES" Style="font-weight: bold; font-size: 18px;"></asp:Label>
                    </div>
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black"  CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>            
            <asp:BoundField DataField="IDorden" HeaderText="ORDEN" InsertVisible="False" ReadOnly="True" SortExpression="IDorden" />
            <asp:BoundField DataField="FechaViaje" HeaderText="FECHA" SortExpression="FechaViaje" />
            <asp:BoundField DataField="HoraViaje" HeaderText="HORA" SortExpression="HoraViaje" />
            <asp:BoundField DataField="Carros" HeaderText="CARROS" SortExpression="Carros" />
            <asp:BoundField DataField="MontoTotal" HeaderText="TOTAL" SortExpression="MontoTotal" />
            <%--<asp:CommandField ShowSelectButton="True" SelectText="DETALLES" ButtonType="Button" />--%>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tarragoReachConnectionString %>" SelectCommand="SELECT [FechaViaje], [IDorden], [HoraViaje], [Carros], [Personas], [CantidadPuntos], [MontoTotal] FROM [CabeceraPreCompra] WHERE ([IDorden] LIKE '%' + @IDorden + '%')">
    <SelectParameters>
        <asp:CookieParameter CookieName="paramcincoC" Name="IDorden" Type="String" />
        <%--<asp:CookieParameter CookieName="paramcincoC" Name="Codigo" Type="String" />--%>
    </SelectParameters>
    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" GridLines="None" AllowPaging="True" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black"  CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>            
            <asp:BoundField DataField="TiempoFinal" HeaderText="TIEMPO"  SortExpression="TiempoFinal" />
            <asp:BoundField DataField="TotalKilometros" HeaderText="KILOMETROS" SortExpression="TotalKilometros" />
            <asp:BoundField DataField="UbicacionCliente" HeaderText="UBICACION" SortExpression="UbicacionCliente" />
            <asp:BoundField DataField="IDchofer" HeaderText="CHOFER" SortExpression="IDchofer" />
            <asp:BoundField DataField="Estado" HeaderText="ESTADO" SortExpression="Estado" />
            <%--<asp:CommandField ShowSelectButton="True" SelectText="DETALLES" ButtonType="Button" />--%>
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tarragoReachConnectionString %>" SelectCommand="SELECT [TiempoFinal], [TotalKilometros], [UbicacionCliente], [IDchofer], [Estado] FROM [CabeceraPreCompra] WHERE ([IDorden] LIKE '%' + @IDorden + '%')">
    <SelectParameters>
        <asp:CookieParameter CookieName="paramcincoC" Name="IDorden" Type="String" />
        <%--<asp:CookieParameter CookieName="paramcincoC" Name="Codigo" Type="String" />--%>
    </SelectParameters>
    </asp:SqlDataSource>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" GridLines="None" AllowPaging="True" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black"  CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>            
            <asp:BoundField DataField="Producto" HeaderText="PRODUCTO"  SortExpression="Producto" />
            <asp:BoundField DataField="Tiempo" HeaderText="TIEMPO" SortExpression="Tiempo" />
            <asp:BoundField DataField="Kilometros" HeaderText="KILOMETROS" SortExpression="Kilometros" />
            <asp:BoundField DataField="Row" HeaderText="FILA" SortExpression="Row" />
            <asp:BoundField DataField="TiempoPunto" HeaderText="TIEMPO ESTADIA" SortExpression="TiempoPunto" />
            <%--<asp:CommandField ShowSelectButton="True" SelectText="DETALLES" ButtonType="Button" />--%>
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
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:tarragoReachConnectionString %>" SelectCommand="SELECT [Producto], [Tiempo], [Kilometros], [Row], [TiempoPunto] FROM [LineasPreCompra] WHERE ([IDorden] LIKE '%' + @IDorden + '%')">
    <SelectParameters>
        <asp:CookieParameter CookieName="paramcincoC" Name="IDorden" Type="String" />
        <%--<asp:CookieParameter CookieName="paramcincoC" Name="Codigo" Type="String" />--%>
    </SelectParameters>
    </asp:SqlDataSource>
                    </div>
        </div>
        </div>
        </div>
</asp:Content>
