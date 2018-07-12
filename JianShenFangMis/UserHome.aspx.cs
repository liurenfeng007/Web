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

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "健身房系统 ";
        if (!IsPostBack)
        {
            if (Session["UserName"] == null)
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Default.aspx");
            }
        }
    }
}
