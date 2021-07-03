<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.ShoppingGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style7 {
            width: 460px;
            height: 200px;
        }
        .auto-style8 {
            width: 382px;
            height: 200px;
        }
        .auto-style9 {
            height: 200px;
        }
        .auto-style11 {
            width: 460px;
            height: 25px;
        }
        .auto-style12 {
            width: 382px;
            height: 25px;
        }
        .auto-style13 {
            height: 25px;
        }
        .auto-style17 {
            margin-top: 0px;
        }
        .auto-style33 {
            width: 382px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;<table style="width:100%;">
        <tr>
            <td class="auto-style33">List of genres:</td>
            <td><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataTable" TypeName="Lab3_Template.DAL.GenreDAO"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" EnableModelValidation="True" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="176px">
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
            <td>
                <asp:Image ID="Image2" runat="server" Height="178px" ImageUrl="~/Images/home-showcase.png" Width="838px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style2">
    <tr>
        <td class="auto-style11" style="font-weight: bold">Albums: <asp:Label ID="lblGenreName" runat="server" Text="Rock"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:Label ID="lblGenreID" runat="server" Text="1" Visible="False"></asp:Label>
        </td>
        <td class="auto-style13">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="ObjectDataSource2" EnableModelValidation="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style17" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField CommandName="Detail" Text="Detail" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView>
        </td>
        <td class="auto-style8">
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetDataTable" TypeName="Lab3_Template.DAL.AlbumDAO" FilterExpression="GenreID = {0}">
        <FilterParameters>
            <asp:ControlParameter ControlID="lblGenreID" DefaultValue="" Name="newparameter" PropertyName="Text" />
        </FilterParameters>
            </asp:ObjectDataSource>
        </td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    </table>
    </asp:Content>
