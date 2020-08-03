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


public partial class Admin_AddItemDetailst : System.Web.UI.Page
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
    


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            da = new SqlDataAdapter("select memberpositionid,memberposition from tbl_memberposition where mid=" + Convert.ToInt32(DropDownList1.SelectedValue.ToString()) + " ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_memberposition");
            if (ds.Tables.Count > 0 && ds.Tables["tbl_memberposition"].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds.Tables["tbl_memberposition"];
                DropDownList2.DataTextField = "memberposition";
                DropDownList2.DataValueField = "memberpositionid";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "--select--");
                Label1.Text = "";
            }
            else
            {
                Label1.Text = "There are no member position  : " + DropDownList1.SelectedItem.Text;
                DropDownList2.Items.Clear();
                DropDownList2.Dispose();

            }
        }
      }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength > 0 && FileUpload1.HasFile == true)
        {
            string filename = Guid.NewGuid().ToString().Substring(0, 10) + "" + FileUpload1.PostedFile.FileName.Remove(0, FileUpload1.PostedFile.FileName.LastIndexOf("."));
            FileUpload1.SaveAs(Server.MapPath("~/Allproductitems/" + filename.ToString()));
            string imgpath = "~/Allproductitems/" + filename.ToString();
            da = new SqlDataAdapter("insert into tbl_memberdetail(mid,memberpositionid,name,imagepath,salary,jerseyno,prefferedfoot,transferfee,age,since,contractends,nationality,description) values(" + Convert.ToInt32(DropDownList1.SelectedValue.ToString()) + "," + Convert.ToInt32(DropDownList2.SelectedValue.ToString()) + ",'" + TextBox1.Text + "','" + imgpath.ToString() + "'," + Convert.ToDecimal(TextBox2.Text) + ",'" + TextBox4.Text + "','" + TextBox5.Text + "'," + Convert.ToDecimal(TextBox6.Text) + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox3.Text + "')", con);
           
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                TextBox10.Text = "";
                TextBox9.Text = "";
                TextBox8.Text = "";
                TextBox7.Text = "";
                TextBox6.Text = "";
                TextBox5.Text = "";
                TextBox4.Text = "";
                TextBox3.Text = "";
                TextBox2.Text = "";
                TextBox1.Text = "";
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                        
        
                
                Response.Redirect("~/Real madrid/Admin/memberdetails.aspx");
            }
        }
    }
    
}
