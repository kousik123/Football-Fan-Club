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


public partial class Admin_memberdetails : System.Web.UI.Page
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
        if (!Page.IsPostBack)
        {
            Getproductdetails();
        }
    }

    private void Getproductdetails()
    {
        da = new SqlDataAdapter("select memberid,name,imagepath,salary,description,jerseyno,prefferedfoot,transferfee,age,since,contractends,nationality from tbl_memberdetail", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_memberdetail");
        GridView1.DataSource = ds.Tables["tbl_memberdetail"].DefaultView;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label memberid = new Label();

        memberid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("memberid");
        if (memberid.Text != "")
        {
            da = new SqlDataAdapter("delete from tbl_memberdetail where memberid=" + Convert.ToInt32(memberid.Text) + " ", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                Getproductdetails();
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Getproductdetails();
    }
}
