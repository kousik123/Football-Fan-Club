<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgot password.aspx.cs" Inherits="forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            height: 362px;
            margin-right: 639px;
        }
        .auto-style8 {
            height: 297px;
            width: 700px;
        }
        .auto-style9 {
            width: 100%;
            height: 287px;
        }
        .auto-style10 {
            width: 254px;
        }
        .auto-style11 {
            width: 194px;
        }
        .auto-style12 {
            width: 700px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style7">
        <tr>
            <td class="auto-style8">
                <table class="auto-style9" align="right">
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Enter you user name :</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="204px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please enter your user name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">New password :</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="204px" TextMode="Password" OnTextChanged="Page_Load"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter your new password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Confirm password :</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="204px" TextMode="Password" OnTextChanged="Page_Load"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="**Password Mismatched"></asp:CompareValidator>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="* please re-enter your password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Text="Change password" Height="38px" OnClick="Button7_Click" Width="146px" />
            &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

