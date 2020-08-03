<%@ Page Language="C#" AutoEventWireup="true" CodeFile="otpmatch.aspx.cs" Inherits="otpmatch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
            height: 369px;
            margin-top: 95px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 96%;
            height: 221px;
        }
        .auto-style4 {
            height: 60px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;<table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-image: url('UserInBox/images/locksmith-key-background1.png')">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label1" runat="server" BorderColor="White" Font-Bold="True" Font-Italic="True" Font-Names="Franklin Gothic Demi Cond" Font-Size="Large" Text="Enter your OTP here"></asp:Label>
&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="129px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="193px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="Submit" Width="104px" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
