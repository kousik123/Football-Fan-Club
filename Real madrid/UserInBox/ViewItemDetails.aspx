<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewItemDetails.aspx.cs" Inherits="UserInBox_ViewItemDetails" Title="View details of seleted products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head runat="server">
    <asp:FormView ID="FormView1" runat="server" Style="position: static">
        <ItemTemplate>
            
            <div style="text-align: left">
                <div style="text-align: left">
                    <table style="width: 382px; position: static; height: 100px">
                        <tr>
                            <td align="center" bgcolor="#33ccff" colspan="3" valign="top">
                                <strong>Selected Item Detailes are :</strong></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                Product Name :</td>
                            <td align="left" style="width: 100px" valign="top">
                                <asp:Label ID="Label1" runat="server" Style="position: static" Text='<%#Eval("productname") %>'></asp:Label></td>
                            <td rowspan="6" style="width: 100px">
                                <asp:Image ID="Image1" runat="server" BackColor="#99ccff" Height="150px" ImageUrl='<%#Eval("imagepath") %>'
                                    Style="position: static" Width="150px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                Item for :</td>
                            <td align="left" style="width: 100px" valign="top">
                                <asp:Label ID="Label2" runat="server" Style="position: static" Text='<%#Eval("itemfor") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                Brand Name :</td>
                            <td align="left" style="width: 100px" valign="top">
                                <asp:Label ID="Label3" runat="server" Style="position: static" Text='<%#Eval("brandname") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                Cost :</td>
                            <td align="left" style="width: 100px" valign="top">
                                <asp:Label ID="Label4" runat="server" Style="position: static" Text='<%#Eval("cost") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 21px;">
                                Description :</td>
                            <td align="left" style="width: 100px; height: 21px;" valign="top">
                                <asp:Label ID="Label5" runat="server" Style="position: static" Text='<%#Eval("description") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                Manufacture&nbsp; Date :</td>
                            <td align="left" style="width: 100px" valign="top">
                                <asp:Label ID="Label6" runat="server" Style="position: static" Text='<%#Eval("cdate") %>'></asp:Label></td>
                        </tr>
                    </table>
                </div>
                
            </div>
                
        </ItemTemplate>
            
    </asp:FormView>
        </head>
</asp:Content>

