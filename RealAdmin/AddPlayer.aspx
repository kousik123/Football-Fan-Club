<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/RealAdmin.master" AutoEventWireup="true" CodeFile="AddPlayer.aspx.cs" Inherits="RealAdmin_AddPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 1198px; position: static; height: 548px; background-image: url('../extra%20images/kxZp7X.jpg');" align="center">
            
            <tr>
                <td colspan="3" class="auto-style54">
                    <strong>Add Item Details</strong></td>
            </tr>

            <tr>
                <td class="auto-style55" style="width: 106px">
                    Select Member type :</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Style="position: static" Height="44px" Width="91px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Goal Keeper</asp:ListItem>
                        <asp:ListItem>Defender</asp:ListItem>
                        <asp:ListItem>Midfielder</asp:ListItem>
                        <asp:ListItem>Forward</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style45">
                </td>
            </tr>
            <tr>
                <td class="auto-style56" style="width: 106px">
                    Member position:</td>
                <td align="left" valign="top" class="auto-style47" style="width: 128px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static" Height="33px" Width="92px">
                        <asp:ListItem>Goalkeeper</asp:ListItem>
                        <asp:ListItem>Right Back</asp:ListItem>
                        <asp:ListItem>Center Back</asp:ListItem>
                        <asp:ListItem>Left Back</asp:ListItem>
                        <asp:ListItem>Defensive Midfielder</asp:ListItem>
                        <asp:ListItem>Center Midfielder</asp:ListItem>
                        <asp:ListItem>Right Midfielder</asp:ListItem>
                        <asp:ListItem>Left Midfielder</asp:ListItem>
                        <asp:ListItem>Attacking Midfielder</asp:ListItem>
                        <asp:ListItem>Winger</asp:ListItem>
                        <asp:ListItem>Striker</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style47">
                </td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px">
                    Name :</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="29px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must be in characters" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style45">
                </td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px; height: 58px;">
                    Jersey No.:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px; height: 58px;">
                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static" Height="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter atmost 3 digit" MaximumValue="999" MinimumValue="1" Type="Integer" ControlToValidate="TextBox4"></asp:RangeValidator>
                </td>
                <td class="auto-style45" style="height: 58px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px">
                    Preffered Foot.:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px; height: 58px;">
                    Age:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px; height: 58px;">
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static" Height="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="enter two digit age" MaximumValue="99" MinimumValue="11" Type="Integer"></asp:RangeValidator>
                </td>
                <td class="auto-style45" style="height: 58px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px; height: 39px;">
                    Nationality:</td>
                <td align="left" valign="top" class="auto-style45" style="height: 39px; width: 128px">
                    <asp:TextBox ID="TextBox7" runat="server" Style="position: static" Height="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="must be in charater" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style45" style="height: 39px">
                </td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px">
                    &nbsp;</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    &nbsp;</td>
                <td class="auto-style45">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px; height: 23px;">
                    Since:</td>
                <td align="left" valign="top" class="auto-style45" style="height: 23px; width: 128px">
                    <asp:TextBox ID="TextBox9" runat="server" Style="position: static" Height="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="enter a valid year" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style45" style="height: 23px">
                </td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px; height: 23px;">
                    Contract Ends:</td>
                <td align="left" valign="top" class="auto-style45" style="height: 23px; width: 128px">
                    <asp:TextBox ID="TextBox11" runat="server" Style="position: static" Height="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox11" ErrorMessage="enter a valid year" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style45" style="height: 23px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55" style="width: 106px; height: 23px;">
                    Salary(<span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">€</span>):</td>
                <td align="left" valign="top" class="auto-style45" style="height: 23px; width: 128px">
                    <asp:TextBox ID="TextBox10" runat="server" Style="position: static" Height="29px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Must be positive integers" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45" style="height: 23px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style57" style="width: 106px">
                    Upload image :</td>
                <td align="left" valign="top" class="auto-style53" style="width: 128px">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" Height="32px" />
                </td>
                <td class="auto-style53">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style58" style="width: 106px">
                    Transfer fee(<span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">€</span>):</td>
                <td align="left" valign="top" class="auto-style52" style="width: 128px">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static" Height="27px" Width="172px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="* must be positive integer" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52">
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="auto-style59" style="width: 106px">
                    Description :</td>
                <td align="left" valign="top" class="auto-style51" style="width: 128px">
                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static" Height="47px" TextMode="MultiLine" Width="267px"></asp:TextBox>
                </td>
                <td class="auto-style51">
                </td>
            </tr>
            <tr>
                <td class="auto-style60" style="width: 106px">
                </td>
                <td align="left" style="width: 128px" valign="top">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="Add.." OnClick="Button1_Click" Height="38px" Width="103px" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 13px">
                </td>
            </tr>
                        </table>
    </div>
</asp:Content>

