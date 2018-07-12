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
public partial class UserLogin : System.Web.UI.UserControl
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null)
            {
                Login1.Visible = false;
                Login2.Visible = true;

            }
            else
            {
                Label1.Text = Session["UserName"].ToString();

                  Label2.Text = Session["Roule"].ToString();
                
                Login1.Visible = true;
                Login2.Visible = false;

            }
        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session["UserId"] = null;
        Session["UserName"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if(Session["Roule"].ToString()=="会员")
        {
  Response.Redirect("UserHome.aspx");
        }
        else
        {
              Response.Redirect("JianLianManger/Default.aspx");
        }
          

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "会员")
        {
            if (TxtUserName.Text == "" && TxtPassword.Text == "")
            {
                Alert.AlertAndRedirect("没有输入账号和密码！", "Default.aspx");


            }
            else
            {
                SqlDataReader dr;
                dr = data.GetDataReader("select * from  Users where UserName='" + TxtUserName.Text.Trim() + "'and pwd='" + TxtPassword.Text.Trim() + "'  ");
                if (dr.Read())
                {

                    Session["UserId"] = dr["id"].ToString();
                    Session["UserName"] = dr["UserName"].ToString();
                    Session["XingMing"] = dr["XingMing"].ToString();

                    Session["Roule"] = "会员";
                    Session["Photo"] = dr["Photo"].ToString();
                    Response.Redirect("Default.aspx");

                }
                else
                {
                    Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Default.aspx");
                }
            }
        }
        else
        {
            if (TxtUserName.Text == "" && TxtPassword.Text == "")
            {
                Alert.AlertAndRedirect("没有输入账号和密码！", "Default.aspx");


            }
            else
            {
                SqlDataReader dr;
                dr = data.GetDataReader("select * from  dbo.JiaoLian where LoginName='" + TxtUserName.Text.Trim() + "'and LoginPwd='" + TxtPassword.Text.Trim() + "'  ");
                if (dr.Read())
                {

                    Session["UserId"] = dr["id"].ToString();
                    Session["UserName"] = dr["LoginName"].ToString();
                    Session["XingMing"] = dr["name"].ToString();

                    Session["Roule"] = "教练";

                    Response.Redirect("Default.aspx");

                }
                else
                {
                    Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Default.aspx");
                }

            }
        }
    }
    
}
