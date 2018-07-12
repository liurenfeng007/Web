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

public partial class JiaoLianInfo : System.Web.UI.Page
{

    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {


            sql = "select * from JiaoLian where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        //这里调用教练信息的内容并绑定到页面相应的位置
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            Label1.Text = dr["Addtime"].ToString();
            Label2.Text =  dr["name"].ToString() ;
            this.DIV1.InnerHtml = dr["content"].ToString();
        }

    }

}
