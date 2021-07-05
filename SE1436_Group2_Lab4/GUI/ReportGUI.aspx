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
            width: 320px;
        }
        .auto-style5 {
            width: 320px;
            height: 193px;
        }
        .auto-style6 {
            height: 193px;
        }
        .auto-style7 {
            height: 13px;
            width: 320px;
        }
        .auto-style8 {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3" align="char">Order date:<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Width="207px" SelectedDate="2021-07-05" SelectionMode="DayWeekMonth"></asp:Calendar>
            </td>
            <td class="auto-style1">From:<br />
                <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                <br />
                To:<br />
                <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                <br />
                FirstName:<br />
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                Country:<br />
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Filter" Width="59px" />
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5">The number of orders:
                <asp:Label ID="numberRecord1" runat="server" Text="0"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style7" EnableModelValidation="True">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:GridView>
            </td>
            <td class="auto-style6">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <br />
                <br />
                The number of orders details:
                <asp:Label ID="numberRecord2" runat="server" Text="0"></asp:Label>
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:GridView>
                <br />
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8"></td>
        </tr>
    </table>
</asp:Content>
