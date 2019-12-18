using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ESP.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Response.Redirect("Cyst.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Rash.aspx");

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bacteria.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bugs.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Chronic.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Viral.aspx");
    }
  
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Osd.aspx");
    }
}