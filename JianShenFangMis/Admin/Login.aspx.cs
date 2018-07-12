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
public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
            //上面判断验证码是否正确 
            SqlConnection con = new SqlConnection(SqlHelper.connstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where  Aname='" + this.txtname.Value + "'and  Apwd='" + this.txtpwd.Value + "' ", con);
            SqlDataReader sdr = cmd.ExecuteReader();

            //判断当前输入的账号密码是否和数据库中的匹配如果匹配登录成功 
            if (sdr.Read())
            {
                Session["Admin"] = sdr["Aname"].ToString();
                Session["AdminId"] = sdr["id"].ToString();

                Response.Write("<script language='javascript'>alert('登录成功');location.href='Default.aspx'</script>");

            }

            else
            {
                Response.Write("<script language='javascript'>alert('用户名或密码错误请重新登录');location.href='login.aspx'</script>");

            }
       

    }
}
