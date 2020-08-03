<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CustomerProfile.aspx.cs" Inherits="UserInBox_CustomerProfile" Title="view customer details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 487px; position: static; height: 626px" align="center">
       <head runat="server"> 
        <tr>
            <td colspan="2">
                &nbsp;<asp:Label ID="Label2" runat="server" Style="position: static" Text="User Profile &gt;&gt;&gt;"
                    Width="146px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 34px;">
            </td>
            <td style="width: 100px; height: 34px;">
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 39px">
                <asp:Label ID="Label3" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
            <td style="width: 100px; height: 39px">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static; margin-left: 0px;"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 38px">
                <asp:Label ID="Label4" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
            <td style="width: 100px; height: 38px">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 38px;">
                <asp:Label ID="Label5" runat="server" Style="position: static" Text="Gender :"></asp:Label></td>
            <td style="width: 100px; height: 38px;">
                <asp:TextBox ID="TextBox3" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 39px;">
                <asp:Label ID="Label6" runat="server" Style="position: static" Text="Email Address :"></asp:Label></td>
            <td style="width: 100px; height: 39px;">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 42px;">
                <asp:Label ID="Label7" runat="server" Style="position: static" Text="City :"></asp:Label></td>
            <td style="width: 100px; height: 42px;">
                <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 39px;">
                <asp:Label ID="Label8" runat="server" Style="position: static" Text="State :"></asp:Label></td>
            <td style="width: 100px; height: 39px;">
                <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 61px">
                <asp:Label ID="Label9" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
            <td style="width: 100px; height: 61px">
                <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px">
                <asp:Label ID="Label10" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox8" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 155px; height: 19px;">
            </td>
            <td style="width: 100px; height: 19px;">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 268435440px; height: 88px;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                    Text="Update >>>" Height="39px" />&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" align="left" PostBackUrl="~/change password.aspx">Update Password</asp:LinkButton>
            </td>
            <td style="width: 143px; height: 88px;">
                </td>
        </tr>
        </head>
    </table>
</asp:Content>

