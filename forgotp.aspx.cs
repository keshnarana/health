using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Blogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from userData where  user_name='" + txtusr.Text + "'", conn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Close();
                SqlCommand comm = new SqlCommand("update  userData set forogotpass='" + Label1.Text + "' where  user_name='" + txtusr.Text + "'", conn);
                comm.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("login.aspx");
            }
            else
            {
                dr.Close();
                string insertQuery = "insert into userData (forogotpass) values (@answer) where user_name='" + txtusr.Text + "'";
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.Parameters.AddWithValue("@answer", Label1.Text);
                comm.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("login.aspx");
            }
           
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
}