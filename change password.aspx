<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="change password.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 140%;
            height: 186px;
        }
        .auto-style8 {
            height: 199px;
        }
        .auto-style9 {
            height: 63px;
        }
        .auto-style10 {
            width: 95%;
            height: 181px;
        }
        .auto-style11 {
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="right" class="auto-style7">
        <tr>
            <td class="auto-style8" >
                <table class="auto-style10" align="right">
                    <tr>
                        <td class="auto-style11">Old password:</td>
                        <td align="left">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="password" Height="30px" Width="177px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Please enter your old password"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">New password :</td>
                        <td align="left">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="password" Height="30px" Width="177px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Please enter  new password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Confirm password :</td>
                        <td align="left">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="password" Height="30px" Width="177px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage=" password mismatched"></asp:CompareValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="UPDATE" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Height="28px" Width="424px" Style="position: static"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

