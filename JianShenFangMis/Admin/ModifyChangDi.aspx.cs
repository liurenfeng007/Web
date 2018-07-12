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

public partial class Admin_ModifyChangDi : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            sql = "select * from ChangDi where id=" + dID;
            getdata(sql);
        }
    }

    //获取当前传值过来的信息，并显示到相应的控件上。。。
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            Label2.Text = dr["name"].ToString();
            content1.Value = dr["content"].ToString();
            DropDownList1.Items.FindByValue(dr["ZhuangTai"].ToString()).Selected = true;
            DropDownList2.Items.FindByValue(dr["LeiXing"].ToString()).Selected = true;


            TextBox2.Text = dr["FeiYong"].ToString();

            pic.Text = dr["Photo"].ToString();

            Image2.ImageUrl = "../files/" + dr["Photo"].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //更新修改后的信息到数据库表中。。。
        sql = "update ChangDi set name='" + Label2.Text.ToString().Trim() + "',content='" + content1.Value + "',ZhuangTai='" + DropDownList1.SelectedValue + "',LeiXing='" + DropDownList2.SelectedValue + "',FeiYong='" + TextBox2.Text + "',Photo='" + pic.Text + "' where id=" + dID;
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "ChangDiManger.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../files/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image2.ImageUrl = "../files/" + pic.Text;
    }
}
