﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Real madrid/Admin/FanAdminMaster.master" AutoEventWireup="true" CodeFile="TransferOutGallery.aspx.cs" Inherits="Real_madrid_TransferOutGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 370px; position: static; height: 18px" align="center">
            
            <tr>
                <td style="width: 100px">
                    <strong><span style="text-decoration: underline">Available Transfer Out Details</span></strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="6" Style="position: static"  OnPageIndexChanging="GridView1_PageIndexChanging" Height="740px" Width="1155px">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        
                        <Columns>
                        
                        
                        <asp:TemplateField HeaderText="TransferOutId">
                        <ItemTemplate>
                        <asp:Label ID="transferoutid" runat="server" Text='<%#Eval("transferoutid") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="MemberPosition">
                        <ItemTemplate>
                        <asp:Label ID="memberposition" runat="server" Text='<%#Eval("memberposition") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Nationality">
                        <ItemTemplate>
                        <asp:Label ID="nationality" runat="server" Text='<%#Eval("nationality") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="EU">
                        <ItemTemplate>
                        <asp:Label ID="eu" runat="server" Text='<%#Eval("eu") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="MovingTo">
                        <ItemTemplate>
                        <asp:Label ID="movingto" runat="server" Text='<%#Eval("movingto") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="TransferType">
                        <ItemTemplate>
                        <asp:Label ID="transfertype" runat="server" Text='<%#Eval("transfertype") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="TransferWindow">
                        <ItemTemplate>
                        <asp:Label ID="transferwindow" runat="server" Text='<%#Eval("transferwindow") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="TransferFee">
                        <ItemTemplate>
                        <asp:Label ID="transferfee" runat="server" Text='<%#Eval("transferfee") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                        
                        </Columns>
                        
                    </asp:GridView>
                </td>
            </tr>
            
        </table>
    </div>
</asp:Content>



