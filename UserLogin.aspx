<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" Title="Customer login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="background" style="background-image: none">
    <div style="text-align: left">
        <table style="width: 1107px; position: static; height: 100px; margin-right: 141px;">
            <tr>
                <td align="center" colspan="3" valign="top">
                    <strong>User Login</strong></td>
            </tr>
            <tr>
                <td align="center" colspan="3" valign="top">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF8080" Height="28px"
                        Style="position: static" Width="424px"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="auto-style12">
                    User Name&nbsp; :<asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="auto-style13">
                    Password&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="Log In" OnClick="Button1_Click" Width="67px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                </td>
                <td class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/ForgetPassword1.aspx" Width="153px">Forgot password</asp:LinkButton>
                    <br />
                </td>
                <td class="auto-style11">
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style8">
                    New User ?</td>
                <td align="center" class="auto-style7">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Style="position: static" Width="152px" PostBackUrl="~/CustomerRegistration.aspx">SignUp Click here....</asp:LinkButton></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            
        </table>
    </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style7 {
            width: 110px;
        }
        .auto-style8 {
            width: 118px;
        }
        .auto-style9 {
            width: 118px;
            height: 102px;
        }
        .auto-style10 {
            width: 110px;
            height: 102px;
        }
        .auto-style11 {
            width: 100px;
            height: 102px;
        }
        .auto-style12 {
            height: 53px;
        }
        .auto-style13 {
            height: 29px;
        }
        .auto-style14 {
            height: 58px;
        }
    </style>
    </div>
</asp:Content>


