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

public partial class Admin_ShenHe : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //这里审核缴费信息。。
            string sql = "update  YuYue set ZhuangTai='已经审核'  where id=" + Request.QueryString["id"].ToString();
            data.RunSql(sql);
            Alert.AlertAndRedirect("已经审核！", "YuYueManger.aspx");
        }

    }
}
