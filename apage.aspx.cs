using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["New"] != null)
            {
                Lwelcome.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Udata.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("addDoc.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddDis.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("manDis.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("manExe.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("manAppo.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("manFeed.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("BlogAd.aspx");
    }
}