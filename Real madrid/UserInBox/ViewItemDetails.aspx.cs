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

public partial class UserInBox_ViewItemDetails : System.Web.UI.Page
{
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            int memberid = Convert.ToInt32(Request.QueryString["memberid"].ToString());
            if (memberid != 0)
            {
                GetMemberDetails();
            }
        }
    }

    private void GetMemberDetails(int mid)
    {
        da = new SqlDataAdapter("select tpid.memberid,tp.membertype,tiop.memberposition,tpid.name,tpid.jerseyno from tbl_memberdetail tpid inner join tbl_membertype tp on tpid.mid=tp.mid inner join tbl_memberposition tiop on tp.mid=tiop.mid where tpid.memberpositionid=tiop.memberpositionid and tpid.memberid=" + mid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_memberdetail");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_memberdetail"].Rows.Count > 0)
        {
            FormView1.DataSource = ds.Tables["tbl_memberdetail"].DefaultView;
            FormView1.DataBind();
        }
    }
}
