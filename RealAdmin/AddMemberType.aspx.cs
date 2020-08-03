using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
 


public partial class RealAdmin_AddMemberType : System.Web.UI.Page
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
        da = new SqlDataAdapter("select mid,membername from tbl_addmembertype", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_addmembertype");
        GridView1.DataSource = ds.Tables["tbl_addmembertype"].DefaultView;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("insert into tbl_addmembertype(membername)values('" + TextBox1.Text + "')", con);

        int n = da.SelectCommand.ExecuteNonQuery();
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
            da = new SqlDataAdapter("delete from tbl_addmembertype where mid=" + Convert.ToInt32(mid.Text) + " ", con);
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
