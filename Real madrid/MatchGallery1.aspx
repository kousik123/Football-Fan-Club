<%@ Page Title="" Language="C#" MasterPageFile="~/Real madrid/Admin/FanAdminMaster.master" AutoEventWireup="true" CodeFile="MatchGallery1.aspx.cs" Inherits="Real_madrid_MatchGallery1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 370px; position: static; height: 18px" align="center">
            
            <tr>
                <td style="width: 100px">
                    <strong><span style="text-decoration: underline">Available Match Details</span></strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="12" ForeColor="#333333" GridLines="None" PageSize="12" Style="position: static"  OnPageIndexChanging="GridView1_PageIndexChanging" Height="740px" Width="1155px">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        
                        <Columns>
                        
                        
                        <asp:TemplateField HeaderText="MatchId">
                        <ItemTemplate>
                        <asp:Label ID="matchid" runat="server" Text='<%#Eval("matchid") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Tournament">
                        <ItemTemplate>
                        <asp:Label ID="tournament" runat="server" Text='<%#Eval("tournament") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="OppositionTeam">
                        <ItemTemplate>
                        <asp:Label ID="oppositionteam" runat="server" Text='<%#Eval("oppositionteam") %>' ></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Result">
                        <ItemTemplate>
                        <asp:Label ID="result" runat="server" Text='<%#Eval("result") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                        <asp:Label ID="date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Month">
                            <ItemTemplate>
                                <asp:Label ID="month" runat="server" Text='<%#Eval("month") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Year">
                            <ItemTemplate>
                                <asp:Label ID="year" runat="server" Text='<%#Eval("year") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="ScoreRealMadrid">
                            <ItemTemplate>
                                <asp:Label ID="scorerm" runat="server" Text='<%#Eval("scorerm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>    
                            <asp:TemplateField HeaderText="ScoreOpponent">
                            <ItemTemplate>
                                <asp:Label ID="scoreot" runat="server" Text='<%#Eval("scoreot") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="PenaltyRealMadrid">
                            <ItemTemplate>
                                <asp:Label ID="penaltyrm" runat="server" Text='<%#Eval("penaltyrm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="PenaltyOpponent">
                            <ItemTemplate>
                                <asp:Label ID="penaltyot" runat="server" Text='<%#Eval("penaltyot") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Label ID="city" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="Referee">
                            <ItemTemplate>
                                <asp:Label ID="referee" runat="server" Text='<%#Eval("referee") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Stadium">
                            <ItemTemplate>
                                <asp:Label ID="stadium" runat="server" Text='<%#Eval("stadium") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Attendance">
                            <ItemTemplate>
                                <asp:Label ID="attendance" runat="server" Text='<%#Eval("attendance") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="GoalScorerRealMadrid">
                            <ItemTemplate>
                                <asp:Label ID="goalscorerrm" runat="server" Text='<%#Eval("goalscorerrm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField><asp:TemplateField HeaderText="GoalScorerOpponent">
                            <ItemTemplate>
                                <asp:Label ID="goalscorerot" runat="server" Text='<%#Eval("goalscorerot") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="YellowCardRealMadrid">
                            <ItemTemplate>
                                <asp:Label ID="yellowcardrm" runat="server" Text='<%#Eval("yellowcardrm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="YellowCardOpponent">
                            <ItemTemplate>
                                <asp:Label ID="yellowcardot" runat="server" Text='<%#Eval("yellowcardot") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>                        
                        <asp:TemplateField HeaderText="RedCarddRealMadrid">
                            <ItemTemplate>
                                <asp:Label ID="redcardrm" runat="server" Text='<%#Eval("redcardrm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                               <asp:TemplateField HeaderText="RedCardOpponent">
                            <ItemTemplate>
                                <asp:Label ID="redcardot" runat="server" Text='<%#Eval("redcardot") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        
                        
                        </Columns>
                        
                    </asp:GridView>
                </td>
            </tr>
            
        </table>
    </div>
</asp:Content>

