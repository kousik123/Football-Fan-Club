<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Credit card payment.aspx.cs" Inherits="UserInBox_Credit_card_payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #payment {
            height: 225px;
        }
        .auto-style1 {
            width: 71%;
            border-style: solid;
            border-width: 2px;
        }
        .auto-style2 {
            width: 774px;
            height: 405px;
        }
        .auto-style3 {
            width: 70%;
            height: 395px;
        }
        .auto-style4 {
            height: 85px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 471px;
            height: 23px;
        }
        .auto-style7 {
            height: 11px;
        }
        .auto-style8 {
            width: 91px;
        }
        .auto-style9 {
            width: 190px;
        }
        .auto-style10 {
            width: 120px;
        }
        .auto-style11 {
            width: 59px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            height: 106px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    
        <table align="center" class="auto-style1" style="background-image: url('images/background-pattern.png'); height: 443px;">
            <tr>
                <td class="auto-style2">
                    <table class="auto-style3">
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Credit Card&nbsp;&nbsp;&nbsp;
                                <img alt="" src="images/visa_logo_6.gif" style="width: 99px; height: 50px" />&nbsp;&nbsp;&nbsp;&nbsp;
                                <img alt="" src="images/mastercard_logo_5.gif" style="width: 99px; height: 45px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img alt="" src="images/american%20card.png" style="width: 99px; height: 44px" /></td>
                        </tr>
                        <tr>
                            <td>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="26px" style="margin-bottom: 0px" Width="130px">Card Number :</asp:TextBox>
                                <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Ridge" Height="26px" Width="384px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* enter valid card no" ValidationExpression="^(\d{4}[- ]){3}\d{4}|\d{16}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <table class="auto-style5">
                                    <tr>
                                        <td class="auto-style6">Expiration Date</td>
                                        <td class="auto-style12">CVV2 / CVC2</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="auto-style5">
                                    <tr>
                                        <td class="auto-style8">Month</td>
                                        <td class="auto-style10">
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                <asp:ListItem>01</asp:ListItem>
                                                <asp:ListItem>02</asp:ListItem>
                                                <asp:ListItem>03</asp:ListItem>
                                                <asp:ListItem>04</asp:ListItem>
                                                <asp:ListItem>05</asp:ListItem>
                                                <asp:ListItem>06</asp:ListItem>
                                                <asp:ListItem>07</asp:ListItem>
                                                <asp:ListItem>08</asp:ListItem>
                                                <asp:ListItem>09</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style11">Year</td>
                                        <td class="auto-style9">
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem>2018</asp:ListItem>
                                                <asp:ListItem>2019</asp:ListItem>
                                                <asp:ListItem>2020</asp:ListItem>
                                                <asp:ListItem>2021</asp:ListItem>
                                                <asp:ListItem>2022</asp:ListItem>
                                                <asp:ListItem>2023</asp:ListItem>
                                                <asp:ListItem>2024</asp:ListItem>
                                                <asp:ListItem>2025</asp:ListItem>
                                                <asp:ListItem>2026</asp:ListItem>
                                                <asp:ListItem>2027</asp:ListItem>
                                                <asp:ListItem>2028</asp:ListItem>
                                                <asp:ListItem>2029</asp:ListItem>
                                                <asp:ListItem>2030</asp:ListItem>
                                                <asp:ListItem>2031</asp:ListItem>
                                                <asp:ListItem>2032</asp:ListItem>
                                                <asp:ListItem>2033</asp:ListItem>
                                                <asp:ListItem>2034</asp:ListItem>
                                                <asp:ListItem>2035</asp:ListItem>
                                                <asp:ListItem>2036</asp:ListItem>
                                                <asp:ListItem>2037</asp:ListItem>
                                                <asp:ListItem>2038</asp:ListItem>
                                                <asp:ListItem>2039</asp:ListItem>
                                                <asp:ListItem>2040</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="151px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="invalid cvv" ValidationExpression="^([0-9]{3,4})$"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">
                                <asp:TextBox ID="TextBox4" runat="server">Name on a card :</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" BorderColor="#CCCCCC" BorderStyle="Ridge" Height="31px" Width="405px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="RegularExpressionValidator" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="135px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="135px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="113px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Height="41px" Text="Complete Transaction" Width="268px" OnClick="Button1_Click" />
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        
    
    </div>
    </form>
</body>
</html>
