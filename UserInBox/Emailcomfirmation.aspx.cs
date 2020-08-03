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

public partial class UserInBox_Emailcomfirmation : System.Web.UI.Page
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
            GetBillingDetails(Convert.ToInt32(Session["uid"].ToString()));
        }
    }

    private void GetBillingDetails(int uid)
    {
        da = new SqlDataAdapter("select fname,lname,gender,email,city,state,country,mobileno from tbl_contact where uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_contact");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_contact"].Rows.Count > 0)
        {
            TextBox1.Text= ds.Tables["tbl_contact"].Rows[0][0].ToString();
            TextBox2.Text = ds.Tables["tbl_contact"].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables["tbl_contact"].Rows[0][2].ToString();
            TextBox4.Text = ds.Tables["tbl_contact"].Rows[0][3].ToString();
            TextBox5.Text = ds.Tables["tbl_contact"].Rows[0][4].ToString();
            TextBox6.Text = ds.Tables["tbl_contact"].Rows[0][5].ToString();
            TextBox7.Text = ds.Tables["tbl_contact"].Rows[0][6].ToString();
            TextBox9.Text = ds.Tables["tbl_contact"].Rows[0][7].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("kousik.pramanik.97@gmail.com");
        msg.To.Add(TextBox4.Text);
        msg.Body="you order is successfully done"+ "your order id and product name is invisible";
        msg.Subject = "Order confirmation";
        msg.IsBodyHtml=true;
        SmtpClient smtp =new SmtpClient();
        smtp.Host="smtp.gmail.com";
        System.Net.NetworkCredential NetworkCred=new System.Net.NetworkCredential();
        NetworkCred.UserName="kousik.pramanik.97@gmail.com";
        NetworkCred.Password="P@55word123";
        smtp.UseDefaultCredentials=true;
        smtp.Credentials=NetworkCred;
        smtp.Port=587;
        smtp.EnableSsl=true;
        smtp.Send(msg);

    }
}