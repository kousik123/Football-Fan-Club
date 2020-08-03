using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Caching;
using System.Data.SqlClient;

public partial class Real_madrid_MatchGallery : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        if (Page.IsPostBack != true)
        {
            GetTournament();
            GetAllMatch();
        }

    }
    private void GetTournament()
    {
        da = new SqlDataAdapter("select tournamentid,tournament from tbl_tournament", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_tournament");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_tournament"].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_tournament"];
            DropDownList1.DataTextField = "tournament";
            DropDownList1.DataValueField = "tournamentid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
    }

    private void GetOppositionTeam(int tournamentid)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            ds = new DataSet();
            ds = WebService.GetOppositionTeam(tournamentid);
            if (ds.Tables.Count > 0 && ds.Tables["tbl_oppositionteam"].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds.Tables["tbl_oppositionteam"].DefaultView;
                DropDownList2.DataTextField = "oppositionteam";
                DropDownList2.DataValueField = "oppositionteamid";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "---Select---");
            }
        }
    }

    private void GetAllMatch()
    {
        // da = new SqlDataAdapter("select matchid,tournament,team,oppositionteam,result,date,month,year,scorerm,scoreot,penaltyrm,penaltyot,city,referee,stadium,attendance,goalscorerrm,goalscorerot,yellowcardrm,yellowcardot,redcardrm,redcardot from tbl_match", con);
        //ds = new DataSet();
        //da.Fill(ds, "tbl_match");
        //if (ds.Tables.Count > 0 && ds.Tables["tbl_match"].Rows.Count > 0)
        //{
        //    DataList1.DataSource = ds.Tables["tbl_match"].DefaultView;
        //    DataList1.DataBind();
        //}    

        ds = new DataSet();
        ds = (DataSet)Cache["a"];
        if (ds == null)
        {
            ds = WebService.GetAllMatch();
            Cache.Insert("a", ds, null, DateTime.Now.AddSeconds(60), TimeSpan.Zero);
            Label7.Text = "Data from DataBase";
        }
        else
        {
            Label7.Text = "Data from Cache";
        }
        DataList1.DataSource = ds; //.Tables["tbl_match"].DefaultView;
        DataList1.DataBind();
    }

    private void GetOppositionTeam(string tournament, string oppositionteam)
    {
        da = new SqlDataAdapter("select tpid.matchid,tpid.tournament,tpid.team,tpid.oppositionteam,tpid.result,tpid.date,tpid.month,tpid.year,tpid.scorerm,tpid.scorerm,tpid.scoreot,tpid.penaltyrm,tpid.penaltyot,tpid.city,tpid.referee,tpid.stadium,tpid.attendance,tpid.goalscorerrm,tpid.goalscorerot,tpid.yellowcardrm,tpid.yellowcardot,tpid.redcardrm,tpid.redcardot from tbl_match tpid  where tpid.tournament='" + tournament.ToString() + "' and tpid.oppositionteam='" + oppositionteam.ToString() + "' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_match");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_match"].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables["tbl_match"].DefaultView;
            DataList1.DataBind();
        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            GetOppositionTeam(Convert.ToInt32(DropDownList1.SelectedValue));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0 && DropDownList2.SelectedIndex > 0)
        {
            GetOppositionTeam(DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GetAllMatch();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        
            da = new SqlDataAdapter("select matchid,tournament,team,oppositionteam,result,date,month,year,scorerm,scoreot,penaltyrm,penaltyot,city,referee,stadium,attendance,goalscorerrm,goalscorerot,yellowcardrm,yellowcardot,redcardrm,redcardot from tbl_match", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_match");
        




    }




}