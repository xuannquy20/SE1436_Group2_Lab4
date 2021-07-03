<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumDetail.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 121px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-weight: bold; font-style: 15; font-family: sans-serif">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Image ID="Image2" runat="server" />
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Artist:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="217px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Genre:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="217px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Price:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" OnClick="Button1_Click" Text="Add to cart" Width="113px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Text="Back" Width="106px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
