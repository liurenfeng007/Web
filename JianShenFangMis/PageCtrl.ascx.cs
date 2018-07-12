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

public partial class PageCtrl : System.Web.UI.UserControl
{
    public GridView gridView = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        gridView.DataBound += new System.EventHandler(this.gridView_DataBound);
        btnGotoPage.Click += new System.EventHandler(this.btnGotoPage_Click);
    }

    public void GridViewBind()
    {
        LblCurrentIndex.Text = "第" + (gridView.PageIndex + 1).ToString() + "页";
        LblPageCount.Text = "共" + gridView.PageCount.ToString() + "页";
        LblRecordCount.Text = "本页" + gridView.Rows.Count.ToString() + "行";
        //没有列表时 不显示数据
        if (Convert.ToInt32(gridView.Rows.Count.ToString()) < 1)
        {
            Table1.Visible = false;
        }

        if (gridView.PageCount == 1)
        {
            btnFirst.Enabled = false;
            btnPrev.Enabled = false;
            btnNext.Enabled = false;
            btnLast.Enabled = false;
        }
        else if (gridView.PageIndex == 0)
        {
            btnFirst.Enabled = false;
            btnPrev.Enabled = false;
            btnNext.Enabled = true;
            btnLast.Enabled = true;
        }
        else if (gridView.PageIndex == gridView.PageCount - 1)
        {
            btnFirst.Enabled = true;
            btnPrev.Enabled = true;
            btnNext.Enabled = false;
            btnLast.Enabled = false;
        }
        else
        {
            btnFirst.Enabled = true;
            btnPrev.Enabled = true;
            btnNext.Enabled = true;
            btnLast.Enabled = true;
        }
        gridView.PagerSettings.Visible = false;
        gridView.PagerStyle.HorizontalAlign = HorizontalAlign.Center;
        gridView.RowStyle.Height = 25;
        gridView.HeaderStyle.Height = 25;
        gridView.EmptyDataRowStyle.Height = 25;
        gridView.AllowPaging = true;
    }

    public void PagerButtonClick(object sender, EventArgs e)
    {
        string arg = ((LinkButton)sender).CommandArgument.ToString();
        switch (arg)
        {
            case "prev":
                if (gridView.PageIndex > 0)
                {
                    gridView.PageIndex -= 1;
                }
                break;
            case "next":
                if (gridView.PageIndex < (gridView.PageCount - 1))
                {
                    gridView.PageIndex += 1;
                }
                break;
            case "last":
                gridView.PageIndex = (gridView.PageCount - 1);
                break;
            default:
                gridView.PageIndex = 0;
                break;
        }
    }

    protected void gridView_DataBound(object sender, EventArgs e)
    {
        GridViewBind();
    }

    protected void btnGotoPage_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            if ((int.Parse(TextBox1.Text) - 1) > 0)
            {
                gridView.PageIndex = int.Parse(TextBox1.Text) - 1;
            }
        }
    }
}
