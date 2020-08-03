<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Emailcomfirmation.aspx.cs" Inherits="UserInBox_Emailcomfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            height: 329px;
        }
        .auto-style2 {
            width: 100%;
            height: 323px;
        }
        .auto-style3 {
            height: 37px;
        }
        .auto-style4 {
            width: 60%;
        }
        .auto-style5 {
            width: 168px;
        }
          * {box-sizing:border-box}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <table align="center" class="auto-style2">
                        <tr>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td>
                                <table align="center" class="auto-style4">
                                    <tr>
                                        <td class="auto-style5">First name</td>
                                        <td>
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">last name</td>
                                        <td>
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">gender</td>
                                        <td>
                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">email</td>
                                        <td>
                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">city</td>
                                        <td>
                    <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">state</td>
                                        <td>
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">country</td>
                                        <td>
                    <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">mob</td>
                                        <td>
                    <asp:TextBox ID="TextBox8" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td>
                    <asp:TextBox ID="TextBox9" runat="server" Style="position: static"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Button" />
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
