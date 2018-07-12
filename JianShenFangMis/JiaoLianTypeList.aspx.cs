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
public partial class JiaoLianTypeList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = Request.QueryString["TypeName"].ToString();
            gvbind();
        }
    }
    private void gvbind()
    {
        //这里获取当前传值过来的教练分类的列表信息，每页显示十五条 
        string sql = "select * from JiaoLian  where TypeName='" + Request.QueryString["TypeName"].ToString() + "' order by id desc";
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;

        objPds.AllowPaging = true;
        objPds.PageSize = 15;

        int CurPage;
        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        objPds.CurrentPageIndex = CurPage - 1;
        lblCurrentPage.Text = CurPage.ToString();
        lblSumPage.Text = objPds.PageCount.ToString();

        if (!objPds.IsFirstPage)
        {
            this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1 + "&TypeName=" + Request.QueryString["TypeName"].ToString();
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1) + "&TypeName=" + Request.QueryString["TypeName"].ToString();
        }

        if (!objPds.IsLastPage)
        {
            hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount + "&TypeName=" + Request.QueryString["TypeName"].ToString();

            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1) + "&TypeName=" + Request.QueryString["TypeName"].ToString();
        }

        this.DataList1.DataSource = objPds;
        this.DataList1.DataBind();
        con.Close();
    }
    protected string CutChar(string strChar, int intLength)
    {
        //取得自定义长度的字符串
        if (strChar.Length > intLength)
        { return strChar.Substring(0, intLength); }
        else
        { return strChar; }

    }
}
