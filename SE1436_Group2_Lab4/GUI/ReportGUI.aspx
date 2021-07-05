<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.ReportGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 453px;
        }
        .auto-style5 {
            width: 453px;
            height: 216px;
        }
        .auto-style6 {
            height: 216px;
        }
        .auto-style1 {
            height: 25px;
        }
        .auto-style7 {
            margin-top: 0px;
            margin-right: 0px;
        }
        .auto-style8 {
            width: 2774px;
        }
        .auto-style9 {
            height: 25px;
            width: 2774px;
        }
        .auto-style10 {
            width: 2774px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            width: 422px;
        }
        .auto-style13 {
            width: 422px;
            height: 216px;
        }
        .auto-style14 {
            height: 26px;
            width: 97px;
        }
        .auto-style15 {
            height: 25px;
            width: 97px;
        }
        .auto-style16 {
            width: 97px;
        }
        .auto-style17 {
            width: 422px;
            height: 7px;
        }
        .auto-style18 {
            width: 453px;
            height: 7px;
        }
        .auto-style19 {
            height: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style17">Order Date:</td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="07/02/2021 21:39:48" SelectionMode="DayWeekMonth"></asp:Calendar>
                </td>
                <td class="auto-style5">From:<br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    To:<br />
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="txtTo_TextChanged"></asp:TextBox>
                    <br />
                    First Name:<br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    Country:<br />
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filter" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">The number of Orders:<asp:Label ID="numberRecord1" runat="server" Text="0"></asp:Label>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style7" EnableModelValidation="True" OnPageIndexChanging="GridView1_PageIndexChanging" Width="443px" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    </asp:GridView>
  
                     
                    <asp:Label ID="OrderID" runat="server" Text="0" Visible="False"></asp:Label>
  
                     
                </td>
                <td class="auto-style15" colspan="0"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="txtTitle" runat="server" Text="The number of order Details:" Visible="False"></asp:Label>
                    <asp:Label ID="numberOfRecord2" runat="server" Text="0" Visible="False"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" AllowPaging="True" OnPageIndexChanging="GridView2_PageIndexChanging">
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
