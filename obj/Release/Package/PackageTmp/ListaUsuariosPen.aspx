<%@ Page Title="Tarrago Reach System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaUsuariosPen.aspx.cs" Inherits="ReachSystem.ListaUsuariosPen" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Row">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>

        <Columns>                                                
            <asp:BoundField DataField="Row" HeaderText="Row" InsertVisible="False" ReadOnly="True" SortExpression="Row" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="FechaCreacion" HeaderText="FechaCreacion" SortExpression="FechaCreacion" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            <asp:BoundField DataField="Perfil" HeaderText="Perfil" SortExpression="Perfil" />
            <asp:BoundField DataField="Idioma" HeaderText="Idioma" SortExpression="Idioma" />
            <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
            <asp:BoundField DataField="IdiomaOrig" HeaderText="IdiomaOrig" SortExpression="IdiomaOrig" />
            <asp:BoundField DataField="EmpresaOrig" HeaderText="EmpresaOrig" SortExpression="EmpresaOrig" />
            <asp:CommandField ShowSelectButton="True" SelectText="ACTUALIZAR" />
        </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tarragoReachConnectionString %>" SelectCommand="SELECT [Row], [Email], [FechaCreacion], [Nombre], [Empresa], [Telefono], [Direccion], [Perfil], [Idioma], [Pais], [IdiomaOrig], [EmpresaOrig] FROM [Usuario] WHERE ([Status] = @Status)">
    <SelectParameters>
        <asp:Parameter DefaultValue="PENDIENTE" Name="Status" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
