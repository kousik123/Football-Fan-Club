<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="AddItemDetails.aspx.cs" Inherits="Admin_AddItemDetailst" Title="Add New Product type details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 1198px; position: static; height: 548px; background-image: url('../extra%20images/kxZp7X.jpg');" align="center">
            
            <tr>
                <td colspan="3" class="auto-style54">
                    <strong>Add Item Details</strong></td>
            </tr>

            <tr>
                <td class="auto-style55">
                    Select item type :</td>
                <td align="left" valign="top" class="auto-style45">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        Style="position: static" Height="44px" Width="91px">
                    </asp:DropDownList></td>
                <td class="auto-style45">
                </td>
            </tr>



            <tr>
                <td colspan="3" class="auto-style46">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Width="232px"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style56">
                    Item for :</td>
                <td align="left" valign="top" class="auto-style47">
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static" Height="33px" Width="92px">
                    </asp:DropDownList></td>
                <td class="auto-style47">
                </td>
            <tr>
                <td class="auto-style56">
                    Select Price Range :</td>
                <td align="left" valign="top" class="auto-style47">
                    <asp:DropDownList ID="DropDownList3" runat="server" Style="position: static" Height="33px" Width="92px">
                    </asp:DropDownList></td>
                <td class="auto-style47">
                </td>

            </tr>
            <tr>
                <td class="auto-style55">
                    Brand name :</td>
                <td align="left" valign="top" class="auto-style45">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="29px"></asp:TextBox></td>
                <td class="auto-style45">
                </td>
            </tr>
            <tr>
                <td class="auto-style57">
                    Upload image :</td>
                <td align="left" valign="top" class="auto-style53">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" Height="32px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="* upload the image of the item"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style53">
                </td>
            </tr>
            <tr>
                <td class="auto-style58">
                    Cost :</td>
                <td align="left" valign="top" class="auto-style52">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static" Height="27px" Width="172px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*enter cost"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*cost must be positive integer" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52">
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="auto-style59">
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


