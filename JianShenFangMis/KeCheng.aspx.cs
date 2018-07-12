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
public partial class KeCheng : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
         
            sql = "select * from KeCheng where id=" + dID;
            getdata(sql);

            GetInfo();
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

            Label3.Text = dr["JiaoLian"].ToString();

            Label4.Text = dr["ZhuangTai"].ToString();
        

            Label6.Text = dr["FeiYong"].ToString();

            Image2.ImageUrl = "files/" + dr["Photo"].ToString();
        }

    }
    private void GetInfo()
    {
        try
        {
            gvInfo.DataSource = GetCodeBy(0);
            gvInfo.DataBind();
        }
        catch
        {

        }

    }


    protected void gvInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvInfo.PageIndex = e.NewPageIndex;
        GetInfo();
    }
    protected void gvInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //鼠标移动变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //当鼠标放上去的时候 先保存当前行的背景颜色 并给附一颜色 
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f6f6f6',this.style.fontWeight='';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
        }
        //单击行改变行背景颜色 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onclick", "this.style.backgroundColor='#f6f6f6'; this.style.color='buttontext';this.style.cursor='default';");
        }

    }
    public DataSet GetCodeBy(int iCount)
    {
        SqlHelper date = new SqlHelper();

        string strTop = "";

        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }

        string sql = "select  " + strTop + "  * from [YuYue] where CDID='" + dID + "'  and ZhuangTai='已经缴费'";
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        SqlCommand cmd = new SqlCommand(sql, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = null;
        try
        {
            con.Open();
            ds = new DataSet();
            da.Fill(ds);

        }
        catch (SqlException ex)
        {
            throw ex;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return ds;
    }

    protected void gvInfo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvInfo_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
       

    }

     
}
