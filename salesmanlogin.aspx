<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesmanlogin.aspx.cs" Inherits="salesmanlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
    <table style="width: 1055px; position: static; height: 322px; margin-right: 141px;" align="right">
        <tr>
            <td align="center" colspan="3" valign="top">
                <strong>Salesman Login</strong></td>
        </tr>
        <tr>
                <td align="center" colspan="3" valign="top">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF8080" Height="28px"
                        Style="position: static" Width="424px"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 22px" align="center" colspan="3">
                    Username&nbsp;:&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="37px" Width="172px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="auto-style7">
                    Password&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password" Height="36px" Width="180px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="SignIn" OnClick="Button1_Click" Height="37px" Width="102px" />
                </td>
            </tr>
            </table>
</div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style7 {
            height: 75px;
        }
        .auto-style8 {
            height: 130px;
        }
    </style>
</asp:Content>


