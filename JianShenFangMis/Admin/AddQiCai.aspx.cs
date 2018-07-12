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

public partial class Admin_AddQiCai : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string sql = "insert into  QiCai(name,content,LeiXing,JiaGe,Photo) values('" + title.Text.ToString().Trim() + "','" + content1.Value + "','" + DropDownList2.SelectedValue + "','" + TextBox2.Text + "','" + pic.Text + "' )";
        data.RunSql(sql);
        Alert.AlertAndRedirect("添加成功", "QiCaiManger.aspx");

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
