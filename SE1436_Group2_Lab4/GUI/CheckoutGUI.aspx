<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.CheckoutGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 216px;
        }
        .auto-style2 {
            width: 258px;
        }
        .auto-style3 {
            width: 216px;
            height: 29px;
        }
        .auto-style4 {
            width: 258px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" style="font-size: 16px; font-weight: bold; font-family: sans-serif">Shipping information:
                    <asp:Label ID="lblError" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Order date:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="orderDate" runat="server" Width="194px" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">User name:&nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="userName" runat="server" Width="194px" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">First name:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="firstName" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name required!" ControlToValidate="firstName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Last name:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="lastName" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name required!" ControlToValidate="lastName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Address:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="address" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">City:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="city" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">State</td>
                <td class="auto-style2">
                    <asp:TextBox ID="state" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Country:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="country" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Phone:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="phone" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="email" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email required!" ControlToValidate="email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Total:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="total" runat="server" Width="194px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">Promocode:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="promoCode" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Order" OnClick="Button1_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
