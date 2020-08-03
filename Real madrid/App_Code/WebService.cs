using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for WebService
/// </summary>
/// 

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

public class WebService : System.Web.Services.WebService 
{
    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    static SqlDataAdapter da;
    static DataSet ds;
    static SqlCommand cmd;

    public WebService () 
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
           
    [WebMethod]

    public static DataSet GetProducts()
    {
        da = new SqlDataAdapter("select pid,productname from tbl_products", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_products");
        return ds;
    }

    [WebMethod]
    public static DataSet GetProductItemFor(int pid)
    {
        da = new SqlDataAdapter("select itemid,itemfor from tbl_itemsofproduct tip inner join tbl_products tp on tip.pid=tp.pid where tip.pid="+pid+" ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_itemsofproduct");
        return ds;
    }

    [WebMethod]
    public static DataSet GetMemberPosition(int mid)
    {
        da = new SqlDataAdapter("select memberpositionid,memberposition from tbl_memberposition tip inner join tbl_membertype tp on tip.mid=tp.mid where tip.mid=" + mid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_memberposition");
        return ds;
    }

    [WebMethod]
    public static DataSet GetOppositionTeam(int tournamentid)
    {
        da = new SqlDataAdapter("select oppositionteamid,oppositionteam from tbl_opposition tip inner join tbl_tournament tp on tip.tournamentid=tp.tournamentid where tip.tournamentid=" + tournamentid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_oppositionteam");
        return ds;
    }



    [WebMethod]
    public static DataSet GetAllProducts()
    {
        da = new SqlDataAdapter("select tpid.pitemdid,tp.productname,tiop.itemfor,tpid.brandname,tpid.imagepath,tpid.cost,tpid.description,tpid.cdate from tbl_productitemdetails tpid inner join tbl_products tp on tpid.pid=tp.pid inner join tbl_itemsofproduct tiop on tp.pid=tiop.pid where tpid.itemid=tiop.itemid", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_productitemdetails");
        return ds;
    }
    [WebMethod]
    public static DataSet GetProductsOfItem(string ptype, string itemfor)
    {
        da = new SqlDataAdapter("select tpid.pitemdid,tp.productname,tiop.itemfor,tpid.brandname,tpid.imagepath,tpid.cost,tpid.description,tpid.cdate from tbl_productitemdetails tpid inner join tbl_products tp on tpid.pid=tp.pid inner join tbl_itemsofproduct tiop on tp.pid=tiop.pid where tpid.itemid=tiop.itemid and tp.productname='" + ptype.ToString() + "' and tiop.itemfor='" + itemfor.ToString() + "' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_productitemdetails");
        return ds;
    }

    

    [WebMethod]
    public static DataSet GetselectedProductDetails(int pid)
    {
        da = new SqlDataAdapter("select tpid.pitemdid,tp.productname,tiop.itemfor,tpid.brandname,tpid.description,tpid.imagepath,tpid.cost,tpid.cdate from tbl_productitemdetails tpid inner join tbl_products tp on tpid.pid=tp.pid inner join tbl_itemsofproduct tiop on tp.pid=tiop.pid where tpid.itemid=tiop.itemid and tpid.pitemdid=" + pid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_productitemdetails");
        return ds;
    }



        [WebMethod]
    public static DataSet GetMembers()
    {
        da = new SqlDataAdapter("select mid,membertype from tbl_membertype", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_membertype");
        return ds;
    }

        [WebMethod]
        public static DataSet GetMPosition(int mid)
        {
            da = new SqlDataAdapter("select memberpositionid,memberposition from tbl_memberposition tip inner join tbl_membertype tp on tip.mid=tp.mid where tip.mid=" + mid + " ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_memberposition");
            return ds;
        }

        [WebMethod]
        public static DataSet GetAllMembers()
        {
            da = new SqlDataAdapter("select tpid.memberid,tp.membertype,tiop.memberposition,tpid.name,tpid.imagepath,tpid.jerseyno,tpid.salary,tpid.prefferedfoot,tpid.transferfee,tpid.age,tpid.since,tpid.contractends,tpid.nationality,tpid.description from tbl_memberdetail tpid inner join tbl_membertype tp on tpid.mid=tp.mid inner join tbl_memberposition tiop on tp.mid=tiop.mid where tpid.memberpositionid=tiop.memberpositionid", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_memberdetail");
            return ds;
        }

        [WebMethod]
        public static DataSet GetMemberPosition(string membertype, string memberposition)
        {
            da = new SqlDataAdapter("select tpid.memberid,tp.membertype,tiop.memberposition,tpid.name,tpid.imagepath,tpid.jerseyno,tpid.salary,tpid.prefferedfoot,tpid.transferfee,tpid.age,tpid.since,tpid.contractends,tpid.nationality,tpid.description from tbl_memberdetail tpid inner join tbl_membertype tp on tpid.mid=tp.mid inner join tbl_memberposition tiop on tp.mid=tiop.mid where tpid.memberpositionid=tiop.memberpositionid and tp.membertype='" + membertype.ToString() + "' and tiop.memberposition='" + memberposition.ToString() + "' ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_memberdetail");
            return ds;
        }

        [WebMethod]
        public static DataSet GetselectedMemberDetails(int mid)
        {
            da = new SqlDataAdapter("select tpid.memberid,tp.membertype,tiop.memberposition,tpid.name,tpid.jerseyno,tpid.salary,tpid.prefferedfoot,tpid.transferfee,tpid.age,tpid.since,tpid.contractends,tpid.nationality,tpid.description from tbl_memberdetail tpid inner join tbl_membertype tp on tpid.mid=tp.mid inner join tbl_memberposition tiop on tp.mid=tiop.mid where tpid.memberpositionid=tiop.memberpositionid and tpid.memberid=" + mid + " ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_memberdetail");
            return ds;
        }

        [WebMethod]
        public static DataSet GetTournament()
        {
            da = new SqlDataAdapter("select tournamentid,tournament from tbl_tournament", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_tournament");
            return ds;
        }

        [WebMethod]
        public static DataSet GetOppositionTeam(int tournamentid)
        {
            da = new SqlDataAdapter("select oppositionteamid,oppositionteam from tbl_oppositionteam tip inner join tbl_tournament tp on tip.tournamentid=tp.tournamentid where tip.tournamentid=" + tournamentid + " ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_oppositionteam");
            return ds;
        }

        [WebMethod]
        public static DataSet GetAllMatch()
        {
            da = new SqlDataAdapter("select tpid.memberid,tp.membertype,tiop.memberposition,tpid.name,tpid.imagepath,tpid.jerseyno,tpid.salary,tpid.prefferedfoot,tpid.transferfee,tpid.age,tpid.since,tpid.contractends,tpid.nationality,tpid.description from tbl_memberdetail tpid inner join tbl_membertype tp on tpid.mid=tp.mid inner join tbl_memberposition tiop on tp.mid=tiop.mid where tpid.memberpositionid=tiop.memberpositionid", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_match");
            return ds;
        }

        [WebMethod]
        public static DataSet GetOppositionTeam(string tournament, string oppositionteam)
        {
            da = new SqlDataAdapter("select tpid.matchid,tp.tournament,tpid.team,tiop.oppositionteam,tpid.result,tpid.date,tpid.month,tpid.year,tpid.scorerm,tpid.scoreot,tpid.city,tpid.stadium,tpid.attendance,tpid.goalscorerrm,tpid.goalscorerot,tpid.yellowcardrm,tpid.yellowcardot,tpid.redcardrm,tpid.redcardot from tbl_match tpid inner join tbl_tournament tp on tpid.tournamentid=tp.tournamentid inner join tbl_oppositionteam tiop on tp.tournamentid=tiop.tournamentid where tpid.oppositionteamid=tiop.oppositionteamid and tp.tournament='" + tournament.ToString() + "' and tiop.oppositionteam='" + oppositionteam.ToString() + "' ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_match");

            return ds;
        }

        [WebMethod]
        public static DataSet GetselectedMatchDetails(int tournamentid)
        {
            da = new SqlDataAdapter("select tpid.matchid,tp.tournament,tpid.team,tiop.oppositionteam,tpid.result,tpid.date,tpid.month,tpid.year,tpid.scorerm,tpid.scoreot,tpid.city,tpid.referee,tpid.stadium,tpid.attendance,tpid.goalscorerrm,tpid.goalscorerot,tpid.yellowcardrm,tpid.yellowcardot,tpid.redcardrm,tpid.redcardot from tbl_match tpid inner join tbl_tournament tp on tpid.tournamentid=tp.tournamentid inner join tbl_oppositionteam tiop on tp.tournamentid=tiop.tournamentid where tpid.oppositionteamid=tiop.oppositionteamid and tpid.matchid=" + tournamentid + " ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_match");
            return ds;
        }


}




