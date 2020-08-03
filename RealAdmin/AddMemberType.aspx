<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/RealAdmin.Master" AutoEventWireup="true" CodeFile="AddMemberType.aspx.cs" Inherits="RealAdmin_AddMemberType" %>

<asp:Content ID="c1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <table style="width: 937px; position: static; height: 751px" align="center">
            
            <tr>
                <td colspan="3">
                    <strong>AddNewItemTypes</strong></td>
            </tr>
            <tr>
                <td class="auto-style45">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter&nbsp;&nbsp; Member Type :</td>
                <td class="auto-style45">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="32px" Width="169px"></asp:TextBox></td>
                <td class="auto-style45">
                </td>
            </tr>
            <tr>
                <td class="auto-style46">
                </td>
                <td class="auto-style46">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                        Text="Add" Font-Bold="True" Height="31px" Width="93px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*pls enter member type"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style46">
                </td>
            </tr>
            <tr>
                <td class="auto-style47">
                </td>
                <td class="auto-style47">
                </td>
                <td class="auto-style47">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                        Style="position: static" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" Height="529px" Width="825px" >
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        
                        <Columns>
                        
                        <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                        <asp:LinkButton ID="delete" runat="server" Text="delete" CommandName="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                       
                       <asp:TemplateField HeaderText="Memberid">
                        <ItemTemplate>
                        <asp:Label ID="mid" runat="server" Text='<%#Eval("mid") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="MemberName">
                        <ItemTemplate>
                        <asp:Label ID="mname" runat="server" Text='<%#Eval("membername") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>                       
                        
                       
                        </Columns>
                        
                        <EmptyDataTemplate>
                            <strong>There no member Type Available.</strong>
                        </EmptyDataTemplate>
                        
                    </asp:GridView>
                </td>
            </tr>
            
        </table>
    </div>
    
       

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style45 {
            width: 100px;
            height: 62px;
        }
        .auto-style46 {
            width: 100px;
            height: 49px;
        }
        .auto-style47 {
            width: 100px;
        }
    </style>
</asp:Content>

