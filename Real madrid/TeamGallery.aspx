<%@ Page Title="" Language="C#" MasterPageFile="Admin/FanAdminMaster.master" AutoEventWireup="true" CodeFile="TeamGallery.aspx.cs" Inherits="Real_madrid_TeamGallery" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 698px; position: static; height: 100px" align="center">
      <head >
 
            <tr>
                <td colspan="6">
                    <strong>Available Team Member Details</strong></td>
            </tr>
            <tr>
                <td colspan="6" style="height: 51px">
                    <div style="text-align: center">
                        <table style="width: 638px; position: static; height: 8px">
                            <tr>
                                <td bgcolor="#33ccff" style="width: 100px">
                    Select MemberType :</td>
                                <td bgcolor="#33ccff" style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList></td>
                                <td bgcolor="#33ccff" style="width: 100px">
                    Select Member Position :</td>
                                <td bgcolor="#33ccff" style="width: 100px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static">
                    </asp:DropDownList></td>
                                <td bgcolor="#33ccff" style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Style="position: static" Text="Search >>" OnClick="Button1_Click" /></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" bgcolor="#33ccff">
                </td>
                <td style="width: 48px" bgcolor="#33ccff">
                </td>
                <td bgcolor="#33ccff" colspan="2">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Style="position: static" Text="Label"
                        Width="262px"></asp:Label></td>
                <td style="width: 100px" bgcolor="#33ccff">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="position: static"
                        Text="ShowAll>>>" /></td>
                <td style="width: 100px" bgcolor="#33ccff">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 48px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:DataList ID="DataList1" runat="server" Style="position: static" RepeatColumns="2" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <table style="width: 382px; position: static; height: 100px">
                               
                                 <tr>
                                    <td style="width: 100px">
                                        MemberType :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="membertype" runat="server" Style="position: static" Text='<%#Eval("membertype") %>'></asp:Label></td>
                                
                                        
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Member Position :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label2" runat="server" Style="position: static" Text='<%#Eval("memberposition") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                         Name :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label3" runat="server" Style="position: static" Text='<%#Eval("name") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Jersey Number :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label4" runat="server" Style="position: static" Text='<%#Eval("jerseyno") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Salary :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label5" runat="server" Style="position: static" Text='<%#Eval("salary") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Preffered Foot:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label6" runat="server" Style="position: static" Text='<%#Eval("prefferedfoot") %>'></asp:Label></td>
                                </tr>

                                <tr>
                                    <td style="width: 100px">
                                        Transfer Fee:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label8" runat="server" Style="position: static" Text='<%#Eval("transferfee") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Age:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label9" runat="server" Style="position: static" Text='<%#Eval("age") %>'></asp:Label></td>
                                </tr>
                                 <tr>
                                    <td style="width: 100px">
                                        Since:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label10" runat="server" Style="position: static" Text='<%#Eval("since") %>'></asp:Label></td>
                                </tr>
                                 <tr>
                                    <td style="width: 100px">
                                        Contract Ends:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label11" runat="server" Style="position: static" Text='<%#Eval("contractends") %>'></asp:Label></td>
                                </tr>

                                 <tr>
                                    <td style="width: 100px">
                                        Nationality:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label12" runat="server" Style="position: static" Text='<%#Eval("nationality") %>'></asp:Label></td>
                                </tr>
                                 <tr>
                                    <td style="width: 100px">
                                        Description:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label13" runat="server" Style="position: static" Text='<%#Eval("description") %>'></asp:Label></td>
                                </tr>
                                 
                                    
                                    

                             
                                
                                
                            </table>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 48px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            </head>    
        </table>
    </div>
</asp:Content>

