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
using System.Data.SqlClient;


public partial class Real_madrid_Admin_AddTeam : System.Web.UI.Page
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
            GetItemType();
            Getitemsfor();
        }
    }

    private void GetItemType()
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

    private void Getitemsfor()
    {
        da = new SqlDataAdapter("select tip.oppositionteamid,tp.tournament,tip.oppositionteam from tbl_oppositionteam tip inner join tbl_tournament tp on tip.tournamentid=tp.tournamentid", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_oppositionteam");
        GridView1.DataSource = ds.Tables["tbl_oppositionteam"].DefaultView;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            da = new SqlDataAdapter("insert into tbl_oppositionteam(tournamentid,oppositionteam)values(" + Convert.ToInt32(DropDownList1.SelectedValue.ToString()) + ",'" + TextBox1.Text + "')", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                Getitemsfor();
                TextBox1.Text = "";
                DropDownList1.SelectedIndex = 0;

            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        Label oppositionteamid = new Label();

        oppositionteamid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("oppositionteamid");
        if (oppositionteamid.Text != "")
        {
            da = new SqlDataAdapter("delete from tbl_oppositionteam where oppositionteamid=" + Convert.ToInt32(oppositionteamid.Text) + " ", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                Getitemsfor();
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Getitemsfor();
    }
}
