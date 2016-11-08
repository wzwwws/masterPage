using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //大海风景
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("demo.aspx?m="+LinkButton13.Text);
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        Response.Redirect("demo.aspx?m=" + LinkButton14.Text);
    }
    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        Response.Redirect("demo.aspx?m=" + LinkButton15.Text);
    }
    protected void LinkButton16_Click(object sender, EventArgs e)
    {
        Response.Redirect("demo.aspx?m=" + LinkButton16.Text);
    }
}