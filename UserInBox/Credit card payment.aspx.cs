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

public partial class UserInBox_Credit_card_payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox7.Text = Guid.NewGuid().ToString().Substring(0,6);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        if (!Page.IsPostBack)
        {
            GetBillingDetails(Convert.ToInt32(Session["uid"].ToString()));
        }

    }

    private void GetBillingDetails(int uid)
    {
        da = new SqlDataAdapter("select uid, email from tbl_contact where uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_contact");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_contact"].Rows.Count > 0)
        {
            
            TextBox6.Text = ds.Tables["tbl_contact"].Rows[0][0].ToString();
            TextBox8.Text = ds.Tables["tbl_contact"].Rows[0][1].ToString();
            
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
            }
    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("insert into tbl_otp1(uid,email,otp)values('" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox7.Text + "')", con);
        int n = da.SelectCommand.ExecuteNonQuery();
        if (n == 1)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("kousik.pramanik.97@gmail.com");
            msg.To.Add(TextBox8.Text);
            msg.Body = "Your OTP for payment is - " + TextBox7.Text;
            msg.Subject = "OTP confirmation";
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "kousik.pramanik.97@gmail.com";
            NetworkCred.Password = "P@55word123";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(msg);
            Response.Redirect("~/otpmatch.aspx");
        }
    }
}