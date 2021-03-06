﻿using System;
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

public partial class Real_madrid_Admin_TransferInDetails : System.Web.UI.Page
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
        da = new SqlDataAdapter("select transferinid,memberposition,name,nationality,eu,movingfrom,transfertype,transferwindow,contractends,transferfee from tbl_transferin", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_transferin");
        GridView1.DataSource = ds.Tables["tbl_transferin"].DefaultView;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label transferinid = new Label();

        transferinid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("transferinid");
        if (transferinid.Text != "")
        {
            da = new SqlDataAdapter("delete from tbl_transferin where transferinid=" + Convert.ToInt32(transferinid.Text) + " ", con);
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
