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
using System.Web.Caching;
using System.Data.SqlClient;


public partial class Real_madrid_TeamGallery1 : System.Web.UI.Page
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
            GetMemberTypes();
            GetAllMembers();
        }
    }
    private void GetMemberTypes()
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






    private void GetMPosition(int mid)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            ds = new DataSet();
            ds = WebService.GetMPosition(mid);
            if (ds.Tables.Count > 0 && ds.Tables["tbl_memberposition"].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds.Tables["tbl_memberposition"].DefaultView;
                DropDownList2.DataTextField = "memberposition";
                DropDownList2.DataValueField = "memberpositionid";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "---Select---");
            }
        }
    }

    private void GetAllMembers()
    {
        // da = new SqlDataAdapter("select tpid.memberid,tp.membertype,tiop.memberposition,tpid.name,tpid.imagepath,tpid.jerseyno,tpid.salary,tpid.prefferedfoot,tpid.transferfee,tpid.age,tpid.since,tpid.contractends,tpid.nationality,tpid.description from tbl_memberdetail tpid inner join tbl_membertype tp on tpid.mid=tp.mid inner join tbl_memberposition tiop on tp.mid=tiop.mid where tpid.memberpositionid=tiop.memberpositionid", con);
        //ds = new DataSet();
        //da.Fill(ds, "tbl_memberdetail");
        //if (ds.Tables.Count > 0 && ds.Tables["tbl_memberdetail"].Rows.Count > 0)
        //{
        //  DataList1.DataSource = ds.Tables["tbl_memberdetail"].DefaultView;
        //DataList1.DataBind();
        // }

        ds = new DataSet();
        ds = (DataSet)Cache["a"];
        if (ds == null)
        {
            ds = WebService.GetAllMembers();
            Cache.Insert("a", ds, null, DateTime.Now.AddSeconds(60), TimeSpan.Zero);
            Label7.Text = "Data from DataBase";
        }
        else
        {
            Label7.Text = "Data from Cache";
        }
        DataList1.DataSource = ds; //.Tables["tbl_memberdetail"].DefaultView;
        DataList1.DataBind();

    }

    private void GetMemberPosition(string membertype, string memberposition)
    {
        da = new SqlDataAdapter("select tpid.memberid,tp.membertype,tiop.memberposition,tpid.name,tpid.imagepath,tpid.jerseyno,tpid.salary,tpid.prefferedfoot,tpid.transferfee,tpid.age,tpid.since,tpid.contractends,tpid.nationality,tpid.description from tbl_memberdetail tpid inner join tbl_membertype tp on tpid.mid=tp.mid inner join tbl_memberposition tiop on tp.mid=tiop.mid where tpid.memberpositionid=tiop.memberpositionid and tp.membertype='" + membertype.ToString() + "' and tiop.memberposition='" + memberposition.ToString() + "' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_memberdetail");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_memberdetail"].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables["tbl_memberdetail"].DefaultView;
            DataList1.DataBind();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            GetMPosition(Convert.ToInt32(DropDownList1.SelectedValue));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0 && DropDownList2.SelectedIndex > 0)
        {
            GetMemberPosition(DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GetAllMembers();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        da = new SqlDataAdapter("select tpd.memberid,tpd.name,tpd.jerseyno,tpd.imagepath,tpd.salary,tpd.prefferedfoot,tpd.transferfee,tpd.age,tpd.since,tpd.contractends,tpd.nationality,tpd.description from tbl_memberdetail tpd where tpd.memberid=" + Convert.ToInt32(e.CommandArgument.ToString()) + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_tpd");
    }




}
