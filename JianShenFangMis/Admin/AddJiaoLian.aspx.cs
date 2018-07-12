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

public partial class Admin_AddJiaoLian : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from JiaoLianType");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
   
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        //把教练信息添加到教练信息表中。。
        string sql = "insert into JiaoLian(name,content,typeid,TypeName,FeiYong,LoginName,LoginPwd) values('" + title.Text.ToString().Trim() + "','" + content1.Value + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "' ,'" + TextBox2.Text + "' ,'" + TextBox3.Text + "' )";
            data.RunSql(sql);
            Alert.AlertAndRedirect("添加成功", "addJiaoLian.aspx");

    }
   
}
