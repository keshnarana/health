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

public partial class Default9 : System.Web.UI.Page
{
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        foreach (TableCell myCell in e.Row.Cells)
        {
            myCell.Style.Add("word-break", "break-all");
            myCell.Width = 200;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Doctor (Doctor,Doctor_name,Speciality,Availability,Phone,pass) values (@imag,@Doctor_name,@Speciality, @Availability, @Phone,@pass)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@imag", TextBox1.Text);
            com.Parameters.AddWithValue("@Doctor_name", TextBox2.Text);
            com.Parameters.AddWithValue("@Speciality", TextBox3.Text);
            com.Parameters.AddWithValue("@Availability", TextBox4.Text);
            com.Parameters.AddWithValue("@Phone", TextBox5.Text);
            com.Parameters.AddWithValue("@pass", TextBox6.Text);
            com.ExecuteNonQuery();
            Response.Redirect("manD.aspx");
            Response.Write("registeration success");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
}