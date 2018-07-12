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
public partial class AddMoney : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "健身房系统";
        if (!IsPostBack)
        {
            if (Session["UserName"].ToString() == "")
            {
                Alert.AlertAndRedirect("您没有登陆不能充值", "Default.aspx");
            }
            else
            {
                SqlDataReader dr;
                dr = data.GetDataReader("select * from  Users  where id='" + Session["UserId"].ToString() + "'");
                if (dr.Read())
                {
                    Label1.Text = dr["MemberMoney"].ToString();
                }
            }
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

        data.RunSql("update Users set MemberMoney=MemberMoney+" + Convert.ToDecimal(txtLoginName.Text) + "   where id='" + Session["UserId"].ToString() + "'");



        Alert.AlertAndRedirect("充值成功", "AddMoney.aspx");
    }
}
