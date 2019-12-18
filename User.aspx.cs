using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["body"].ToString() == null)
            {
                HyperLink1.Text = "take a test";
                HyperLink1.NavigateUrl = "test.aspx";
            }
            else if (Session["body"].ToString() == "Apple")
            {

                pa1.Visible = false;
                pa2.Visible = true;
                pa3.Visible = false;
                HyperLink1.Text = "Recommended apple shape exercises";
                HyperLink1.NavigateUrl = "ex.aspx";
            }
            else if (Session["body"].ToString() == "Avcado")
            {
                pa1.Visible = true;
                pa2.Visible = false;
                pa3.Visible = false;
                HyperLink1.Text = "Recommended Avacado shape exercises";
                HyperLink1.NavigateUrl = "ex1.aspx";
            }
            else if (Session["body"].ToString() == "Pear")
            {
                pa1.Visible = false;
                pa2.Visible = false;
                pa3.Visible = true;
                HyperLink1.Text = "Recommended Pear shape exercises";
                HyperLink1.NavigateUrl = "ex2.aspx";
            }
        }
    }
}