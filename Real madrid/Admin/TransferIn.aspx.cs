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

public partial class Real_madrid_Admin_TransferIn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tbl_transferin (memberposition,name,nationality,eu,movingfrom,transfertype,transferwindow,contractends,transferfee) values (@memberposition,@name,@nationality,@eu,@movingfrom,@transfertype,@transferwindow,@contractends,@transferfee)", con);

        cmd.Parameters.AddWithValue("memberposition", DropDownList2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("name", TextBox1.Text);
        cmd.Parameters.AddWithValue("nationality", TextBox11.Text);
        cmd.Parameters.AddWithValue("eu", DropDownList3.SelectedItem.Value);
        cmd.Parameters.AddWithValue("movingfrom", TextBox6.Text);
        cmd.Parameters.AddWithValue("transfertype", DropDownList4.SelectedItem.Value);
        cmd.Parameters.AddWithValue("transferwindow", DropDownList5.SelectedItem.Value);
        cmd.Parameters.AddWithValue("contractends", TextBox9.Text);
        cmd.Parameters.AddWithValue("transferfee", TextBox10.Text);










         con.Open();  
        int i = cmd.ExecuteNonQuery();  
        con.Close();
        if (i != 0)
        {
            Label1.Text = " Your data is been saved in the database";
            Label1.ForeColor = System.Drawing.Color.ForestGreen;

        }
        else
        {
            Label1.Text = "Something went wrong with selection";
            Label1.ForeColor = System.Drawing.Color.Red;




        }


    }
}