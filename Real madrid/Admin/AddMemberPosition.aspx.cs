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

public partial class Admin_AddItems : System.Web.UI.Page
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

        if (Page.IsPostBack!=true)
        {
            GetItemType();
            Getitemsfor();
        }
    }

    private void GetItemType()
    {
        da = new SqlDataAdapter("select mid,membertype from tbl_membertype", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_membertype");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_membertype"].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_membertype"];
            DropDownList1.DataTextField = "membertype";
            DropDownList1.DataValueField = "mid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
    }

    private void Getitemsfor()
    {
        da = new SqlDataAdapter("select tip.memberpositionid,tp.membertype,tip.memberposition from tbl_memberposition tip inner join tbl_membertype tp on tip.mid=tp.mid", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_memberposition");
        GridView1.DataSource = ds.Tables["tbl_memberposition"].DefaultView;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            da = new SqlDataAdapter("insert into tbl_memberposition(mid,memberposition)values(" + Convert.ToInt32(DropDownList1.SelectedValue.ToString()) + ",'" + TextBox1.Text + "')", con);
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

        Label memberpositionid = new Label();

        memberpositionid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("memberpositionid");
        if (memberpositionid.Text != "")
        {
            da = new SqlDataAdapter("delete from tbl_memberposition where memberpositionid=" + Convert.ToInt32(memberpositionid.Text) + " ", con);
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
