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
public partial class ZaiXianYuYue : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.DataSource = data.GetDataReader("select * from  KeCheng  where ZhuangTai='可预约'");
            DropDownList2.DataValueField = "id";
            DropDownList2.DataTextField = "name";
            DropDownList2.DataBind();

            string sql = "select * from KeCheng where id='" + DropDownList2.SelectedValue +"'";
            SqlDataReader dr = data.GetDataReader(sql);
            if (dr.Read())
            {



                Label2.Text = dr["FeiYong"].ToString();

                Label4.Text = dr["JiaoLian"].ToString();

                Hidden1.Value = dr["JiaoLianID"].ToString();
            }

         

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        //这里实现课程预约的代码 。。并提示必须登录，，
        if (Session["UserName"] == null)
        {
            Alert.AlertAndRedirect("对不起您还没有登录", "Default.aspx");
        }
        else
        {
 

                //把预约信息添加到数据库中。。。
            data.RunSql("insert into YuYue(CDID,CDBianHao,RiQi,YuYueTime,BeiZhu,UserId,XingMing,Yaoqiu,ShiChang,ZongFeiYong,JiaoLianID,JiaoLian)values('" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox1.Text + "','" + Session["UserId"].ToString() + "','" + Session["XingMing"].ToString() + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + Label3.Text + "','" + Hidden1.Value + "','" + Label4.Text + "')");

                data.RunSql("update  dbo.KeCheng set SYCS=SYCS+1 where id='"+DropDownList2.SelectedValue+"'");
                Alert.AlertAndRedirect("预约成功！", "MyYueYueManger.aspx");

        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select * from KeCheng where id=" + DropDownList2.SelectedValue;
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {



            Label2.Text = dr["FeiYong"].ToString();

            Label4.Text = dr["JiaoLian"].ToString();

            Hidden1.Value = dr["JiaoLianID"].ToString();

         
        }

       
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        Label3.Text =Convert.ToString( float.Parse(Label2.Text) * float.Parse(TextBox5.Text));

    }
}
