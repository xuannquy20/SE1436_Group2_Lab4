<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CartGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.CartGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            height: 122px;
        }
        .auto-style9 {
            height: 132px;
        }
        .auto-style10 {
            height: 32px;
            width: 601px;
        }
        .auto-style11 {
            height: 122px;
            width: 601px;
        }
        .auto-style12 {
            height: 132px;
            width: 601px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout &gt;&gt;" Width="226px" />
</td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style11" align="center" style="font-size: 25px; font-weight: bold">Total:
                <asp:Label ID="labelTotal" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style12"><asp:ListView ID="ListView1" runat="server" >
           <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:HyperLink ID="TitleLink" runat="server" Text='Detail' NavigateUrl = '<%# "AlbumDetail.aspx?albumID=" + Eval("AlbumID")%>'/>
                    </td>
                    <td>
                        <asp:Label ID="AlbumIDLabel" runat="server" Text='<%# Eval("albumID") %>' /> 
                    </td>
                    <td>
                        <asp:Label ID="CountLabel" runat="server" Text='<%# Eval("Count") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateCreatedLabel" runat="server" Text='<%# Eval("DateCreated") %>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="RemoveLink" runat="server" Text="Remove from cart" OnCommand="RemoveLink_Click" CommandArgument='<%# Eval("AlbumID", "{0}") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="1" style="">
                                <tr runat="server" style="">
                                    <th id="Th1" runat="server">
                                        Detail</th>
                                    <th runat="server">
                                        AlbumID</th>
                                    <th runat="server">
                                        Count</th>
                                    <th id="Th3" runat="server">
                                        Date</th>
                                    <th id="Th2" runat="server">
                                        Remove</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr> 
                            </table>
                        </td>
                    </tr>
                </table>
             </LayoutTemplate>
        </asp:ListView>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
    </table>
</asp:Content>
