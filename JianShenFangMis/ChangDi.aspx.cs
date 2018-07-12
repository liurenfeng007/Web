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
public partial class ChangDi: System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "健身房系统";
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
         
            sql = "select * from ChangDi where id=" + dID;
            getdata(sql);

        
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            Label1.Text = dr["Addtime"].ToString();
            Label2.Text = dr["name"].ToString();
            this.DIV1.InnerHtml = dr["content"].ToString();

            Label3.Text = dr["LeiXing"].ToString();

            Label4.Text = dr["ZhuangTai"].ToString();
        

            Label6.Text = dr["FeiYong"].ToString();

            Image2.ImageUrl = "files/" + dr["Photo"].ToString();
        }

    }



     
}
