<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword1.aspx.cs" Inherits="ForgetPassword1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 96%;
            height: 472px;
        }
        .auto-style8 {
            width: 884px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <p>
        <br />
    </p>
    <table align="center" class="auto-style7" style="background-image: url('UserInBox/images/realforgotpass%20back.jpg'); margin-right: 1000px;">
        <tr>
            <td class="auto-style8" style="background-image: url('UserInBox/images/Real-madrid-2015-2016-kit.jpg')">
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Enter your registered Email"></asp:Label>
                <br />
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="345px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="Button8" runat="server" Height="33px" OnClick="Button8_Click" Text="Recovery" Width="93px" />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>

