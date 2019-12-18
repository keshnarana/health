
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;


public partial class Default10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Diseases (Image,Name,Description,Cure,Phone) values (@Image,@Name,@Description, @Cure, @Extra)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Image", TextBox1.Text);
            com.Parameters.AddWithValue("@Name", TextBox2.Text);
            com.Parameters.AddWithValue("@Description", TextBox3.Text);
            com.Parameters.AddWithValue("@Cure", TextBox4.Text);
            com.Parameters.AddWithValue("@Extra", TextBox5.Text);
            com.ExecuteNonQuery();
            Response.Redirect("askind.aspx");
            Response.Write("registeration success");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        foreach (TableCell myCell in e.Row.Cells)
        {
            myCell.Style.Add("word-break", "break-all");
            myCell.Width = 200;

        }
    }
}