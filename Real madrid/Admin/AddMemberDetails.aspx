<%@ Page Language="C#" MasterPageFile="MasterPage3.master" AutoEventWireup="true" CodeFile="AddMemberDetails.aspx.cs" Inherits="Admin_AddItemDetailst" Title="Add New Member details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 1198px; position: static; height: 548px; background-image: url('../extra%20images/kxZp7X.jpg');" align="center">
            
            <tr>
                <td colspan="3" class="auto-style54">
                    <strong>Add Member Details</strong></td>
            </tr>

            <tr>
                <td class="auto-style55" style="height: 26px">
                    Select Member type :</td>
                <td align="left" valign="top" class="auto-style45" style="height: 26px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        Style="position: static" Height="44px" Width="91px">
                    </asp:DropDownList></td>
                <td class="auto-style45" style="height: 26px">
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style46">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Width="232px"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style56">
                    Member Position :</td>
                <td align="left" valign="top" class="auto-style47">
                    <asp:DropDownList ID="DropDownList2" runat="server"  Style="position: static" Height="33px" Width="92px">
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
                    Upload image :</td>
                <td align="left" valign="top" class="auto-style53" >
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" Height="32px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="* upload the image of the item"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style53" style="height: 57px">
                </td>
            </tr>
            <tr>
                <td class="auto-style58">
                    Salary in €(per week):</td>
                <td align="left" valign="top" class="auto-style52">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*enter salary"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*salary must be positive integer" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52">
                </td>
            </tr>
            <tr>
                <td class="auto-style58">
                    Jersey No.:</td>
                <td align="left" valign="top" class="auto-style52">
                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter atmost 3 digit" MaximumValue="999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58" >
                   Preffered Foot.:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:TextBox ID="TextBox5" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Left or Right foot" ValidationExpression="\b(Left ?| ?Right)\b"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58">
                    Transfer fee in €:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static" Height="27px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="*transfer fee must be positive integer" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58" >
                    Age:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:TextBox ID="TextBox7" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="enter two digit age" MaximumValue="99" MinimumValue="11" Type="Integer"></asp:RangeValidator>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style58" >
                    Since:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px">
                    <asp:TextBox ID="TextBox8" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="enter a valid year" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
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
                    Nationality:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 128px; height: 37px;">
                    <asp:TextBox ID="TextBox10" runat="server" Style="position: static" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox10" ErrorMessage="Must be in characters" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52" style="height: 37px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" valign="top" class="auto-style59">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Description :</td>
                <td align="left" valign="top" class="auto-style51">
                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static" Height="47px" TextMode="MultiLine" Width="267px"></asp:TextBox></td>
                <td class="auto-style51">
                </td>
            </tr>
            <tr>
                <td class="auto-style60">
                </td>
                <td align="left" style="width: 100px" valign="top">
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


