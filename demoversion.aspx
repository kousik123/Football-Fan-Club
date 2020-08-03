<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demoversion.aspx.cs" Inherits="demoversion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    Email Address:
<asp:TextBox ID="txtEmail" runat="server" Width = "250" />
<br />
<asp:Label ID="lblMessage" runat="server" />
<br />
<asp:Button ID="Button1" Text="Send" runat="server" OnClick="SendEmail" />
    </form>
</body>
</html>
