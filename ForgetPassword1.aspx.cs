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
using System.Net.Mail; 

public partial class ForgetPassword1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        string username = string.Empty;
    string password = string.Empty;
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    using (SqlConnection con = new SqlConnection(constr))
    {
        using (SqlCommand cmd = new SqlCommand("SELECT uname, [password] FROM tbl_login WHERE email = @Email"))
        {
           cmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
            cmd.Connection = con;
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                if (sdr.Read())
                {
                    username = sdr["uname"].ToString();
                    password = sdr["password"].ToString();
                }
            }
            con.Close();
        }
    }
    if (!string.IsNullOrEmpty(password))
    {
        MailMessage mm = new MailMessage("kousik.pramanik.97@gmail.com", TextBox1.Text.Trim());
        mm.Subject = "Password Recovery";
        mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
        mm.IsBodyHtml = true;
       SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
         System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
        NetworkCred.UserName = "kousik.pramanik.97@gmail.com";
        NetworkCred.Password = "P@55word123";
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(mm);
        
        Label1.Text = "Password has been sent to your email address.";
        Label1.ForeColor = System.Drawing.Color.Green;
        Response.Redirect("~/Userlogin.aspx");
    }
    else
    {
        
        Label1.Text = "This email address does not match our records.";
        Label1.ForeColor = System.Drawing.Color.Red;
    }
}
    }
