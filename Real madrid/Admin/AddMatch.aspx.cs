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
public partial class Real_madrid_Admin_AddMatch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (!Page.IsPostBack)  
        //{  
        // DropDownList1.DataSource = DropDownList1.SelectedItem.Value;  
        // DropDownList1.DataBind();  
        //}  
        }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand cmd = new SqlCommand("insert into tbl_match (tournament,team,oppositionteam,result,date,month,year,scorerm,scoreot,penaltyrm,penaltyot,city,referee,stadium,attendance,goalscorerrm,goalscorerot,yellowcardrm,yellowcardot,redcardrm,redcardot) values (@tournament,@team,@oppositionteam,@result,@date,@month,@year,@scorerm,@scoreot,@penaltyrm,@penaltyot,@city,@referee,@stadium,@attendance,@goalscorerrm,@goalscorerot,@yellowcardrm,@yellowcardot,@redcardrm,@redcardot)", con);  
        cmd.Parameters.AddWithValue("tournament", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("team", DropDownList2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("oppositionteam", DropDownList3.SelectedItem.Value);
        cmd.Parameters.AddWithValue("result", DropDownList4.SelectedItem.Value);
        cmd.Parameters.AddWithValue("date", DropDownList5.SelectedItem.Value);
        cmd.Parameters.AddWithValue("month", DropDownList6.SelectedItem.Value);
        cmd.Parameters.AddWithValue("year", DropDownList7.SelectedItem.Value);
        cmd.Parameters.AddWithValue("scorerm", DropDownList8.SelectedItem.Value);
        cmd.Parameters.AddWithValue("scoreot", DropDownList9.SelectedItem.Value);
        cmd.Parameters.AddWithValue("penaltyrm", DropDownList10.SelectedItem.Value);
        cmd.Parameters.AddWithValue("penaltyot", DropDownList11.SelectedItem.Value);
        cmd.Parameters.AddWithValue("city", TextBox1.Text);
        cmd.Parameters.AddWithValue("referee", TextBox2.Text);
        cmd.Parameters.AddWithValue("stadium", TextBox3.Text);
        cmd.Parameters.AddWithValue("attendance", TextBox4.Text);
        cmd.Parameters.AddWithValue("goalscorerrm", TextBox5.Text);
        cmd.Parameters.AddWithValue("goalscorerot", TextBox6.Text);
        cmd.Parameters.AddWithValue("yellowcardrm", TextBox7.Text);
        cmd.Parameters.AddWithValue("yellowcardot", TextBox8.Text);
        cmd.Parameters.AddWithValue("redcardrm", TextBox9.Text);
        cmd.Parameters.AddWithValue("redcardot", TextBox10.Text);



        con.Open();  
        int i = cmd.ExecuteNonQuery();  
        con.Close();  
        if (i != 0) {  
            Label1.Text = " Your data is been saved in the database";  
            Label1.ForeColor = System.Drawing.Color.ForestGreen;  
  
        } else {  
            Label1.Text = "Something went wrong with selection";  
            Label1.ForeColor = System.Drawing.Color.Red;  
    }

    }
}
