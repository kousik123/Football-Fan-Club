<%@ Page Title="" Language="C#" MasterPageFile="~/Real madrid/Admin/MasterPage3.master" AutoEventWireup="true" CodeFile="AddTeam.aspx.cs" Inherits="Real_madrid_Admin_AddTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 788px; position: static; height: 590px" align="center">
        
                <tr>
                <td colspan="3" class="auto-style51">
                    <strong>Add Opposition Team</strong></td>
            </tr>
            <tr>
                <td class="auto-style45">
                    Select Tournament :</td>
                <td align="left" valign="top" class="auto-style46">
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" Height="36px" Width="116px">
                    </asp:DropDownList></td
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td class="auto-style47">
                    Opposition Team :</td>
                <td align="left" valign="top" class="auto-style48">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="31px" Width="173px"></asp:TextBox></td>
                <td class="auto-style48">
                </td>
            </tr>
            <tr>
                <td class="auto-style49">
                </td>
                <td align="left" valign="top" class="auto-style50">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                        Text="Add.." Font-Bold="True" Height="33px" Width="96px" /></td>
                <td class="auto-style50">
                </td>
            </tr>
            <tr>
                <td style="width: 111px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                        Style="position: static" AutoGenerateColumns="False" AllowPaging="True" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging" Height="457px" Width="922px">
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
                        
                        <asp:TemplateField HeaderText="OppositionTeamId">
                        <ItemTemplate>
                        <asp:Label ID="oppositionteamid" runat="server" Text='<%#Eval("oppositionteamid") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="Tournament">
                        <ItemTemplate>
                        <asp:Label ID="tournament" runat="server" Text='<%#Eval("tournament") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="OppositionTeam">
                        <ItemTemplate>
                        <asp:Label ID="oppositionteam" runat="server" Text='<%#Eval("oppositionteam") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        

                        
                        </Columns>
                        <EmptyDataTemplate>
                            <strong>There are no Opposition Team Deatils.</strong>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        
        </table>
    </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style45 {
            width: 111px;
            height: 52px;
        }
        .auto-style46 {
            width: 100px;
            height: 52px;
        }
        .auto-style47 {
            width: 111px;
            height: 53px;
        }
        .auto-style48 {
            width: 100px;
            height: 53px;
        }
        .auto-style49 {
            width: 111px;
            height: 49px;
        }
        .auto-style50 {
            width: 100px;
            height: 49px;
        }
        .auto-style51 {
            height: 34px;
        }
    </style>
</asp:Content>

