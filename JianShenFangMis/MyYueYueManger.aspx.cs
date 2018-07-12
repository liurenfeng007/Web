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

public partial class MyYueYueManger : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvInfo.DataKeyNames = new string[] { "ID", "ZhuangTai" };
            GetInfo();
        }
    }
    //绑定当前登录用户的预约信息。。
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

        //获取预约新的SQL语句
        string sql = "select  " + strTop + "  * from [YuYue] where UserId='" + Session["UserId"].ToString() + "'";
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
        //这里更新预约的状态信息代码 
        SqlHelper mydata = new SqlHelper();

        string ZhuangTai = gvInfo.DataKeys[e.RowIndex]["ZhuangTai"].ToString().Trim();

        string ID = gvInfo.DataKeys[e.RowIndex].Values[0].ToString();

        try
        {
            //如果已经缴费就不能取消预约了 
            if (ZhuangTai == "已经缴费")
            {
                Label1.Text = "您已经缴费不能取消预约请联系管理员！";

            }
            else
            {
                //如果没有缴费可以取消预约
                mydata.RunSql("delete  from YuYue  where  id='" + ID + "'");

                Label1.Text = "取消成功！";
                gvInfo.EditIndex = -1;
                GetInfo();
            }
        }
        catch
        {

            Label1.Text = "取消失败！";
        }

    }
}
