<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.AlbumGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
           <p>
    List of Album<asp:Label ID="LblError" runat="server" BackColor="White" BorderColor="Red" ForeColor="Red"></asp:Label>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateSelectButton="True" DataKeyNames="AlbumID" DataSourceID="ObjectDataSource1" EnableModelValidation="True" Width="494px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
</p>
<p>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Lab3_Template.DTL.Album" DeleteMethod="Delete" SelectMethod="GetDataTable" TypeName="Lab3_Template.DAL.AlbumDAO"></asp:ObjectDataSource>
</p>
<p>
    <asp:Button ID="BtAdd" runat="server" BackColor="Black" BorderColor="White" Text="Add" ForeColor="White" OnClick="BtAdd_Click" Width="70px" />
    <asp:Button ID="BtEdit" runat="server" Text="Edit" BackColor="Black" ForeColor="White" OnClick="BtEdit_Click" Width="70px" style="margin-left: 36px" />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
