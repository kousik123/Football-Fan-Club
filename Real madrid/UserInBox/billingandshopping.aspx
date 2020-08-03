<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="billingandshopping.aspx.cs" Inherits="user_billingandshopping" Title="Shipping and billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table  style="width: 949px; position: static; height: 467px" align="center">
        <head runat="server">
            <tr>
                <td colspan="2">
                    &nbsp;<asp:Label ID="Label2" runat="server" Style="position: static" Text="Billing Address >>>"
                        Width="146px"></asp:Label></td>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Text="Shipping Address >>>"
                        Width="156px"></asp:Label></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 145px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 66px">
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Style="position: static"
                        Text="Same address" OnCheckedChanged="CheckBox1_CheckedChanged" Width="151px" /></td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label3" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
                <td style="width: 145px; height: 21px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label12" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
                <td style="width: 66px; height: 21px">
                    <asp:TextBox ID="TextBox10" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="* enter your first name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 59px;">
                    <asp:Label ID="Label4" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
                <td style="width: 145px; height: 59px;">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 59px;">
                    <asp:Label ID="Label13" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
                <td style="width: 66px; height: 59px;">
                    <asp:TextBox ID="TextBox11" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 59px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="*enter your last name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 38px;">
                    <asp:Label ID="Label5" runat="server" Style="position: static" Text="Gender :"></asp:Label></td>
                <td style="width: 145px; height: 38px;">
                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 38px;">
                    <asp:Label ID="Label14" runat="server" Style="position: static" Text="Gender :"></asp:Label></td>
                <td style="width: 66px; height: 38px;">
                    <asp:TextBox ID="TextBox12" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 38px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px; height: 54px;">
                    <asp:Label ID="Label6" runat="server" Style="position: static" Text="E-mail :" Width="72px"></asp:Label></td>
                <td style="width: 145px; height: 54px;">
                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 54px;">
                    <asp:Label ID="Label15" runat="server" Style="position: static" Text="E-mail :" Width="68px"></asp:Label></td>
                <td style="width: 66px; height: 54px;">
                    <asp:TextBox ID="TextBox13" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 54px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox13" ErrorMessage="*enter your email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox13" ErrorMessage="*enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 39px;">
                    <asp:Label ID="Label7" runat="server" Style="position: static" Text="City :"></asp:Label></td>
                <td style="width: 145px; height: 39px;">
                    <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 39px;">
                    <asp:Label ID="Label16" runat="server" Style="position: static" Text="City :"></asp:Label></td>
                <td style="width: 66px; height: 39px;">
                    <asp:TextBox ID="TextBox14" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 39px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox14" ErrorMessage="*enter your city"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 42px;">
                    <asp:Label ID="Label8" runat="server" Style="position: static" Text="State :"></asp:Label></td>
                <td style="width: 145px; height: 42px;">
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 42px;">
                    <asp:Label ID="Label17" runat="server" Style="position: static" Text="State :"></asp:Label></td>
                <td style="width: 66px; height: 42px;">
                    <asp:TextBox ID="TextBox15" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 42px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox15" ErrorMessage="*enter your state"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 48px">
                    <asp:Label ID="Label9" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
                <td style="width: 145px; height: 48px">
                    <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 48px">
                    <asp:Label ID="Label18" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
                <td style="width: 66px; height: 48px">
                    <asp:TextBox ID="TextBox16" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 48px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox16" ErrorMessage="*enter your country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 37px;">
                    <asp:Label ID="Label11" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
                <td style="width: 145px; height: 37px;">
                    <asp:TextBox ID="TextBox9" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 37px;">
                    <asp:Label ID="Label20" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
                <td style="width: 66px; height: 37px;">
                    <asp:TextBox ID="TextBox18" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 37px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox18" ErrorMessage="*enter your mobile number"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox18" ErrorMessage="*enter valid mobile no starting with 0" ValidationExpression="\d{5}([- ]*)\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 145px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 66px">
                </td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Style="position: static" Text="Proceed & Continue>>" OnClick="Button1_Click" /></td>
                <td style="width: 66px">
                </td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 145px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 66px">
                </td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
          </head>
        </table>
    </div>
</asp:Content>

