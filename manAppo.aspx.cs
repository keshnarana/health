using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.Common;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
            if (Session["New"] != null)
            {
                DateTime now = DateTime.Now.Date;
                Label1.Text = now.ToLongDateString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        foreach (TableCell myCell in e.Row.Cells)
        {
            myCell.Style.Add("word-break", "break-all");
            myCell.Width = 150;

        }
    }
protected void  Button1_Click(object sender, EventArgs e)
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    conn.Open();
    SqlCommand com = new SqlCommand("delete from Aptment where DateOfAptment < '" + Label1.Text  +"' ", conn);
    SqlDataReader dr = com.ExecuteReader();


    conn.Close();
}
}

