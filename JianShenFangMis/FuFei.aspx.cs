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
public partial class FuFei : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataReader dr;
            dr = data.GetDataReader("select * from  Users  where id='" + Session["UserId"].ToString() + "'");
            if (dr.Read())
            {
                Label1.Text = dr["MemberMoney"].ToString();
            }


            string sql = "select * from dbo.YuYue where id=" + Request.QueryString["id"].ToString();
            SqlDataReader dr1 = data.GetDataReader(sql);
            if (dr1.Read())
            {



                Label2.Text = dr1["ZongFeiYong"].ToString();


            }



        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (float.Parse(Label1.Text) < float.Parse(Label2.Text))
        {
            Alert.AlertAndRedirect("余额不足！", "AddMoney.aspx");
        }
        else
        {

            data.RunSql("update Users set MemberMoney=MemberMoney-" + Convert.ToDecimal(Label2.Text) + "   where id='" + Session["UserId"].ToString() + "'");



            string sql = "update  YuYue set ZhuangTai='已经缴费'  where id=" + Request.QueryString["id"].ToString();
            data.RunSql(sql);
            Alert.AlertAndRedirect("操作成功！", "MyYueYueManger.aspx");
        }

    }
}
