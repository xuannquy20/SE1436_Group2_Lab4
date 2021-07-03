<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.ReportGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 100%;
            height: 513px;
        }
        .auto-style3 {
            height: 23px;
            width: 252px;
        }
        .auto-style5 {
            width: 252px;
            height: 193px;
        }
        .auto-style6 {
            height: 193px;
        }
        .auto-style7 {
            height: 13px;
            width: 252px;
        }
        .auto-style8 {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3" align="char">Order date:<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Width="207px"></asp:Calendar>
            </td>
            <td class="auto-style1">From:<br />
                <input id="Text1" type="text" /><br />
                To:<br />
                <input id="Text2" type="text" /><br />
                FirstName:<br />
                <input id="Text3" type="text" /><br />
                Country:<br />
                <input id="Text4" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Filter" Width="59px" />
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5">The number of orders: 0<br />
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <br />
            </td>
            <td class="auto-style6">
                <br />
                lblNoOrders<br />
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GridView1</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <br />
                <br />
                The number of orders details: 0
                <br />
                <asp:GridView ID="GridView2" runat="server">
                </asp:GridView>
                <br />
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8"></td>
        </tr>
    </table>
</asp:Content>
