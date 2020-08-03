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

public partial class RealAdmin_AddPlayer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength > 0 && FileUpload1.HasFile == true)
        {
            string filename = Guid.NewGuid().ToString().Substring(0, 10) + "" + FileUpload1.PostedFile.FileName.Remove(0, FileUpload1.PostedFile.FileName.LastIndexOf("."));
            FileUpload1.SaveAs(Server.MapPath("~/Allproductitems/" + filename.ToString()));
            string image = "~/Allproductitems/" + filename.ToString();
            da = new SqlDataAdapter("insert into tbl_players1(membertype,memberposition,name,jerseyno,prefferedfoot,age,nationality,joiningdate,expiringdate,salary,image,transferfee,description) values(" + Convert.ToInt32(DropDownList1.SelectedValue.ToString()) + "," + Convert.ToInt32(DropDownList2.SelectedValue.ToString()) + ",'" + TextBox1.Text + "','" + TextBox4.Text + "'," + Convert.ToInt32(DropDownList3.SelectedValue.ToString()) + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox11.Text + "','" + Convert.ToDecimal(TextBox10.Text) + "','" + image.ToString() + "'," + Convert.ToDecimal(TextBox2.Text) + ",'" + TextBox3.Text + "')", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                
                TextBox1.Text = "";
                TextBox4.Text = "";
                DropDownList2.SelectedIndex = 0;
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                
                
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
