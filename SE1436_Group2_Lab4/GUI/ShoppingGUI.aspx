<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.ShoppingGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 460px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 427px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style1">List of genres:</td>
        <td class="auto-style3"><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataTable" TypeName="Lab3_Template.DAL.GenreDAO"></asp:ObjectDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" EnableModelValidation="True" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:GridView>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
    <asp:Label ID="lblGenreID" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style3">
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetDataTable" TypeName="Lab3_Template.DAL.AlbumDAO"></asp:ObjectDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
    &nbsp;<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="ObjectDataSource2" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
