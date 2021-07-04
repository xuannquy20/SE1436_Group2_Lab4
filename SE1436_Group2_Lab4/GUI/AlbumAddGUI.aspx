<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumAddGUI.aspx.cs" Inherits="SE1436_Group2_Lab4.GUI.AlbumAddGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 304px;
        }
        .auto-style2 {
            width: 751px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <p>
        <asp:Label ID="Label1" runat="server" Text="Add a new Album"></asp:Label>
        <asp:Label ID="LblError" runat="server" ForeColor="#FF3300"></asp:Label>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">Title<asp:TextBox ID="TxtTitle" runat="server" Style="margin-left: 19px" Width="252px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtTitle" ErrorMessage="Title required"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Genre<asp:DropDownList ID="ddlGenre" runat="server" Height="21px" Style="margin-left: 7px" Width="260px">
                </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Artist<asp:DropDownList ID="ddlArtist" runat="server" Height="26px" Style="margin-left: 13px" Width="252px">
                </asp:DropDownList>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">Price<asp:TextBox ID="txtPrice" runat="server" Style="margin-left: 17px" Width="252px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage=" Price required"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="From 0 to 9999" MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">URL<asp:TextBox ID="txtURL" runat="server" Style="margin-left: 23px" Width="252px" ReadOnly="True"></asp:TextBox>
                    <asp:FileUpload ID="FileUpload1" runat="server"/>
                    <asp:Button ID="BtnUpload" runat="server" Text="Upload" OnClick="BtnUpload_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="69px" OnClick="btnSave_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Style="margin-left: 16px" Width="65px" OnClick="btnCancel_Click" CausesValidation="False" />
                </td>
            </tr>
        </table>
        <br />
        &nbsp;
    </p>
</asp:Content>
