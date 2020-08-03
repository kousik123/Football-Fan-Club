using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class forgot_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        con.Open();

        string str1 = "select * from tbl_login where uname=' "+ TextBox1.Text + "'";

        SqlCommand cmd = new SqlCommand(str1, con);

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

            con1.Open();

            string str = "update tbl_login set password='" + TextBox2.Text + "'where uname= '" + TextBox1.Text + "'";

            SqlCommand cmd1 = new SqlCommand(str, con1);

            cmd1.ExecuteNonQuery();

            Label1.Text = "Your Password has been changed successfully ";
            Label1.ForeColor = System.Drawing.Color.Green;
            con1.Close();

            con.Close();

        }

        else
        {

            Label1.Text = " please enter your valid id ";
            Label1.ForeColor = System.Drawing.Color.Red;

        }



    }
    
}