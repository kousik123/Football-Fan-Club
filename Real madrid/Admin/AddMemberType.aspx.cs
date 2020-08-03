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


public partial class Admin_AddItemType : System.Web.UI.Page
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
            GetItemTypes();
        }

    }

    private void GetItemTypes()
    {
        da = new SqlDataAdapter("select mid,membertype from tbl_membertype", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_membertype");
        GridView1.DataSource = ds.Tables["tbl_membertype"].DefaultView;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("insert into tbl_membertype(membertype)values('" + TextBox1.Text + "')", con);
        int n= da.SelectCommand.ExecuteNonQuery();
        if (n == 1)
        {
            GetItemTypes();
            TextBox1.Text = "";
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {       
        Label mid = new Label();

        mid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("mid");
        if (mid.Text != "")
        {
            da = new SqlDataAdapter("delete from tbl_membertype where mid=" + Convert.ToInt32(mid.Text) + " ", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetItemTypes();
            }
        }

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetItemTypes();
    }
}
