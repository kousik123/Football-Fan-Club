<%@ Page Language="C#" MasterPageFile="MasterPage3.master" AutoEventWireup="true" CodeFile="memberdetails.aspx.cs" Inherits="Admin_memberdetails" Title="All member details list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 370px; position: static; height: 18px" align="center">
            
            <tr>
                <td style="width: 100px">
                    <strong><span style="text-decoration: underline">Available Member Details</span></strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="12" ForeColor="#333333" GridLines="None" PageSize="12" Style="position: static" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging" Height="740px" Width="1155px">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        
                        <Columns>
                        
                         <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                        <asp:LinkButton ID="delete" runat="server" Text="delete" CommandName="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="MemberId">
                        <ItemTemplate>
                        <asp:Label ID="memberid" runat="server" Text='<%#Eval("memberid") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                        <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("imagepath") %>' Width="100" Height="100" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Salary">
                        <ItemTemplate>
                        <asp:Label ID="salary" runat="server" Text='<%#Eval("salary") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Jersey No.">
                            <ItemTemplate>
                                <asp:Label ID="jerseyno" runat="server" Text='<%#Eval("jerseyno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Preffered Foot">
                            <ItemTemplate>
                                <asp:Label ID="prefferedfoot" runat="server" Text='<%#Eval("prefferedfoot") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="Transfer Fee">
                            <ItemTemplate>
                                <asp:Label ID="transferfee" runat="server" Text='<%#Eval("transferfee") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>    
                            <asp:TemplateField HeaderText="Age">
                            <ItemTemplate>
                                <asp:Label ID="age" runat="server" Text='<%#Eval("age") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="Since">
                            <ItemTemplate>
                                <asp:Label ID="since" runat="server" Text='<%#Eval("since") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contract Ends">
                            <ItemTemplate>
                                <asp:Label ID="contractends" runat="server" Text='<%#Eval("contractends") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Nationality">
                            <ItemTemplate>
                                <asp:Label ID="nationality" runat="server" Text='<%#Eval("nationality") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
   
                        </Columns>
                        
                    </asp:GridView>
                </td>
            </tr>
            
        </table>
    </div>
</asp:Content>

