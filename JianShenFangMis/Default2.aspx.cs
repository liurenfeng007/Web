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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //这里是注销用户的代码 
        Session.Abandon();
        Session.Clear();
        Session["UserId"] = null;
        Session["UserName"] = null;
        Response.Redirect("Default.aspx");

    }
}
