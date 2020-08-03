<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerRegistration.aspx.cs" Inherits="CustomerRegistration" Title="Customer Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 980px; position: static; height: 595px; margin-right: 465px;" align="left" cellspacing="3px">
        <tr>
            <td colspan="4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="position: static"></asp:Label></td>
            <td class="auto-style26">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="height: 21px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Red" Style="position: static"
                    Text="*"></asp:Label>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Style="position: static"
                    Text="All are mandatory>>"></asp:Label></td>
            <td class="auto-style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">
                <asp:Label ID="Label2" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
            <td class="auto-style38">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="28px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter your first name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
            <td class="auto-style34">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static" Height="28px" Width="144px"></asp:TextBox></td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter your last name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style43">
                <asp:Label ID="Label4" runat="server" Style="position: static" Text="Gender :"></asp:Label></td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBox3" runat="server" Style="position: static" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter your gender"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label5" runat="server" Style="position: static" Text="Email Address :"></asp:Label></td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: static" Height="28px" Width="144px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="* This field must be requred"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style44">
                <asp:Label ID="Label6" runat="server" Style="position: static" Text="City :"></asp:Label></td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox5" runat="server" Style="position: static" Height="28px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Enter your city name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Style="position: static" Text="State :"></asp:Label></td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox6" runat="server" Style="position: static" Height="27px" Width="147px"></asp:TextBox></td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Enter your state name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">
                <asp:Label ID="Label8" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox7" runat="server" Style="position: static" Height="33px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Enter your country name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label9" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
            <td class="auto-style37">
                <asp:TextBox ID="TextBox8" runat="server" Style="position: static" Height="29px" Width="142px"></asp:TextBox></td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Enter your mobile no"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter  number starting with 0" ValidationExpression="\d{5}([- ]*)\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" class="auto-style16">
                <asp:Label ID="Label10" runat="server" Style="position: static" Text="Login Values >>>"
                    Width="135px"></asp:Label></td>
            <td align="center" class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="2" class="auto-style17">
                <asp:Label ID="Label11" runat="server" Style="position: static" Text="User Name :"></asp:Label></td>
            <td colspan="2" class="auto-style17">
                <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True" 
                    Style="position: static" OnTextChanged="TextBox9_TextChanged" Height="27px" Width="150px"></asp:TextBox></td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Enter your user name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" valign="top" class="auto-style18">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Style="position: static"
                    Width="230px"></asp:Label></td>
            <td align="center" valign="top" class="auto-style30">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="2" class="auto-style19">
                <asp:Label ID="Label12" runat="server" Style="position: static" Text="Password :"></asp:Label></td>
            <td colspan="2" class="auto-style19">
                <asp:TextBox ID="TextBox10" runat="server" Style="position: static" TextMode="Password" Height="30px" Width="159px"></asp:TextBox></td>
            <td class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Enter your password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2">
                <asp:Label ID="Label15" runat="server" Style="position: static" Text="Enter Security text :"></asp:Label></td>
            <td colspan="2">
                <asp:TextBox ID="TextBox12" runat="server" Height="31px" Width="152px"></asp:TextBox>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="2" class="auto-style20">
            </td>
            <td colspan="2" class="auto-style20">
                <asp:TextBox ID="TextBox11" runat="server" Style="position: static" Height="36px" Width="162px"></asp:TextBox></td>
            <td class="auto-style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="*enter the above captcha"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox12" ControlToValidate="TextBox11" ErrorMessage="Please Enter Correct Capche"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" valign="top" class="auto-style21">
                <asp:Button ID="Button1" runat="server" Style="position: static"
                    Text="Submit" OnClick="Button1_Click" Height="36px" Width="130px" /></td>
            <td align="center" valign="top" class="auto-style33">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 117px;
            height: 44px;
        }
        .auto-style10 {
            width: 117px;
            height: 46px;
        }
        .auto-style12 {
            width: 117px;
            height: 48px;
        }
        .auto-style14 {
            width: 117px;
            height: 58px;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            height: 38px;
        }
        .auto-style18 {
            height: 34px;
        }
        .auto-style19 {
            height: 60px;
        }
        .auto-style20 {
            height: 14px;
        }
        .auto-style21 {
            height: 55px;
        }
        .auto-style22 {
            width: 165px;
            height: 44px;
        }
        .auto-style23 {
            width: 165px;
            height: 46px;
        }
        .auto-style24 {
            width: 165px;
            height: 48px;
        }
        .auto-style25 {
            width: 165px;
            height: 58px;
        }
        .auto-style26 {
            width: 165px;
        }
        .auto-style27 {
            height: 21px;
            width: 165px;
        }
        .auto-style28 {
            height: 26px;
            width: 165px;
        }
        .auto-style29 {
            height: 38px;
            width: 165px;
        }
        .auto-style30 {
            height: 34px;
            width: 165px;
        }
        .auto-style31 {
            height: 60px;
            width: 165px;
        }
        .auto-style32 {
            height: 14px;
            width: 165px;
        }
        .auto-style33 {
            height: 55px;
            width: 165px;
        }
        .auto-style34 {
            width: 147px;
            height: 44px;
        }
        .auto-style35 {
            width: 147px;
            height: 46px;
        }
        .auto-style36 {
            width: 147px;
            height: 48px;
        }
        .auto-style37 {
            width: 147px;
            height: 58px;
        }
        .auto-style38 {
            width: 526px;
            height: 44px;
        }
        .auto-style39 {
            width: 526px;
            height: 46px;
        }
        .auto-style40 {
            width: 526px;
            height: 48px;
        }
        .auto-style41 {
            width: 526px;
            height: 58px;
        }
        .auto-style42 {
            width: 143px;
            height: 44px;
        }
        .auto-style43 {
            width: 143px;
            height: 46px;
        }
        .auto-style44 {
            width: 143px;
            height: 48px;
        }
        .auto-style45 {
            width: 143px;
            height: 58px;
        }
    </style>
</asp:Content>


