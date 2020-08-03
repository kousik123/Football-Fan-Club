<%@ Page Title="" Language="C#" MasterPageFile="~/Real madrid/Admin/FanAdminMaster.master" AutoEventWireup="true" CodeFile="MatchGallery.aspx.cs" Inherits="Real_madrid_MatchGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align: center">
                <table style="width: 698px; position: static; height: 100px" align="center">
                
                    <head  >
                    <tr>
                <td colspan="6">
                    <strong>Available Match Details</strong></td>
                </tr>
                    <tr>
                <td colspan="6" style="height: 51px">
                    <div style="text-align: center">
                        <table style="width: 638px; position: static; height: 8px">
                            <tr>
                                <td bgcolor="#33ccff" style="width: 100px">
                    Select TournamentType :</td>
                                <td bgcolor="#33ccff" style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList></td>
                                <td bgcolor="#33ccff" style="width: 100px">
                    Select&nbsp; Opposition Team :</td>
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
                                        Tournament  :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="tournament" runat="server" Style="position: static" Text='<%#Eval("tournament") %>'></asp:Label></td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Myteam :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label2" runat="server" Style="position: static" Text='<%#Eval("team") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                         Opposition Team :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label3" runat="server" Style="position: static" Text='<%#Eval("oppositionteam") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Result :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label4" runat="server" Style="position: static" Text='<%#Eval("result") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Date :</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label5" runat="server" Style="position: static" Text='<%#Eval("date") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Month:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label6" runat="server" Style="position: static" Text='<%#Eval("month") %>'></asp:Label></td>
                                </tr>

                                <tr>
                                    <td style="width: 100px">
                                        Year:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label8" runat="server" Style="position: static" Text='<%#Eval("year") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Score(Real Madrid):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label9" runat="server" Style="position: static" Text='<%#Eval("scorerm") %>'></asp:Label></td>
                                </tr>
                                 <tr>
                                    <td style="width: 100px">
                                        Score(Opposition Team):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label10" runat="server" Style="position: static" Text='<%#Eval("scoreot") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Penalty(Real Madrid):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label21" runat="server" Style="position: static" Text='<%#Eval("penaltyrm") %>'></asp:Label></td>
                                </tr> 
                                <tr>
                                    <td style="width: 100px">
                                        Penalty(OppositionTeam):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label22" runat="server" Style="position: static" Text='<%#Eval("penaltyot") %>'></asp:Label></td>
                                </tr> 
                                
                                
                                <tr>
                                    <td style="width: 100px">
                                        City:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label11" runat="server" Style="position: static" Text='<%#Eval("city") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Referee:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label12" runat="server" Style="position: static" Text='<%#Eval("referee") %>'></asp:Label></td>
                                </tr>
                                 <tr>
                                    <td style="width: 100px">
                                        Stadium:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label13" runat="server" Style="position: static" Text='<%#Eval("stadium") %>'></asp:Label></td>
                                </tr>
                                 <tr>
                                    <td style="width: 100px">
                                        Attendance:</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label14" runat="server" Style="position: static" Text='<%#Eval("attendance") %>'></asp:Label></td>
                                </tr>
                                 <tr>
                                    <td style="width: 100px">
                                        GoalScorer(Real Madrid):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label15" runat="server" Style="position: static" Text='<%#Eval("goalscorerrm") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        GoalScorer(OppositionTeam):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label16" runat="server" Style="position: static" Text='<%#Eval("goalscorerot") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Yellowcard(Real Madrid):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label17" runat="server" Style="position: static" Text='<%#Eval("yellowcardrm") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Yellowcard(OppositionTeam):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label18" runat="server" Style="position: static" Text='<%#Eval("yellowcardot") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Redcard(Real Madrid):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label19" runat="server" Style="position: static" Text='<%#Eval("redcardrm") %>'></asp:Label></td>
                                </tr>
                                
                                <tr>
                                    <td style="width: 100px">
                                        Redcard(OppositionTeam):</td>
                                    <td align="left" style="width: 100px" valign="top">
                                        <asp:Label ID="Label20" runat="server" Style="position: static" Text='<%#Eval("redcardot") %>'></asp:Label></td>
                                </tr>
                                  <tr>
                                    


                             
                                
                                
                            </table>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>

</head>








</table>

        </div>





</asp:Content>

