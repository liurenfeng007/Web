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
public partial class UserStReg : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
        this.Title = "健身房系统 ";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //判断用户名是否存在
        SqlDataReader dr = data.GetDataReader("select * from dbo.Users where UserName='" + txtname.Text + "'");
        if (dr.Read())
        {
            Label5.Text = "账号已经存在请更换！";
            return;


        }
        else
        {
            //把注册信息插入到会员信息表中
            data.RunSql("insert into Users(emal,UserName,Sex,Age,Ds,pwd,XingMing,Photo,Tel)values('" + txtemal.Text + "','" + txtname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Age.Text + "','" + txtds.Text + "','" + TextBox1.Text + "','" + XingMing.Text + "','" + pic.Text + "','" + Tel.Text + "')");

            //插入后跳转页面到首页
            Alert.AlertAndRedirect("注册成功！", "Default.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //这里是文件上传上传用户的头像 
        string res;
        upload up = new upload();
        res = up.Up(file1, "files/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "files/" + pic.Text;

    }
}
