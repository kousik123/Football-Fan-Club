<%@ Page Title="" Language="C#" MasterPageFile="~/Real madrid/Admin/MasterPage3.master" AutoEventWireup="true" CodeFile="TransferIn.aspx.cs" Inherits="Real_madrid_Admin_TransferIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 1198px; position: static; height: 548px; background-image: url('../extra%20images/kxZp7X.jpg');" align="center">
            
            <tr>
                <td colspan="3" class="auto-style54">
                    <strong>Add Player Transfer In Details</strong></td>
            </tr>

            <tr>
                <td class="auto-style55" style="height: 26px">
                    &nbsp;</td>
                <td align="left" valign="top" class="auto-style45" style="height: 26px">
                    &nbsp;</td>
                <td class="auto-style45" style="height: 26px">
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style46">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">
                    Member Position :</td>
                <td align="left" valign="top" class="auto-style47">
                    <asp:DropDownList ID="DropDownList2" runat="server"  Style="position: static" Height="33px" Width="92px">
                        <asp:ListItem>Goalkeeper</asp:ListItem>
                        <asp:ListItem>Defender</asp:ListItem>
                        <asp:ListItem>Midfielder</asp:ListItem>
                        <asp:ListItem>Forward</asp:ListItem>
                    </asp:DropDownList></td>
                <td class="auto-style47">
                </td>
            </tr>
            <tr>
                <td class="auto-style55">
                     Name :</td>
                <td align="left" valign="top" class="auto-style45">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must be in characters" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style45">
                </td>
            </tr>
            <tr>
                <td class="auto-style57" style="height: 57px">
                    Nationality:</td>
                <td align="left" valign="top" class="auto-style53" >
                    <asp:TextBox ID="TextBox11" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                </td>
                <td class="auto-style53" style="height: 57px">
                </td>
            </tr>
             <tr>
                <td class="auto-style58" >
                    EU:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>EU</asp:ListItem>
                        <asp:ListItem>NON EU</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58">
                    Moving From:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static" Height="27px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58" >
                    Transfer Type:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Transfer</asp:ListItem>
                        <asp:ListItem>End Of Loan</asp:ListItem>
                        <asp:ListItem>Buyback Clause</asp:ListItem>
                        <asp:ListItem>Promotion</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58" >
                    Transfer Window:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>Summer</asp:ListItem>
                        <asp:ListItem>Winter</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 37px" >
                    Contract Ends:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px; height: 37px;">
                    <asp:TextBox ID="TextBox9" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="enter a valid year" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52" style="height: 37px">
                    </td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 37px" >
                    Transfer Fee(in £):</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px; height: 37px;">
                    <asp:TextBox ID="TextBox10" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                </td>
                <td class="auto-style52" style="height: 37px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style60">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Width="232px"></asp:Label>
                </td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="Add.." OnClick="Button1_Click" Height="38px" Width="103px" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
                        </table>
    </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style45 {
        width: 100px;
        height: 57px;
    }
    .auto-style46 {
        height: 42px;
    }
    .auto-style47 {
        width: 100px;
        height: 46px;
    }
    .auto-style51 {
        width: 100px;
        height: 72px;
    }
    .auto-style52 {
        width: 100px;
        height: 56px;
    }
    .auto-style53 {
        width: 100px;
        height: 55px;
    }
    .auto-style54 {
        height: 49px;
    }
    .auto-style55 {
        width: 129px;
        height: 57px;
    }
    .auto-style56 {
        width: 129px;
        height: 46px;
    }
    .auto-style57 {
        width: 129px;
        height: 55px;
    }
    .auto-style58 {
        width: 129px;
        height: 56px;
    }
    .auto-style59 {
        width: 129px;
        height: 72px;
    }
    .auto-style60 {
        width: 129px;
    }
</style>
</asp:Content>
