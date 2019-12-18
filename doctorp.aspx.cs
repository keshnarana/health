using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
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

            string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string str;
            SqlCommand com;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select * from Doctor where pass='"+Session["New"].ToString()+"' ";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            Image1.ImageUrl = reader["Doctor"].ToString();
            Label1.Text = reader["Doctor_name"].ToString();
            Label2.Text = reader["Availability"].ToString();
            string User = Label1.Text;
            reader.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from Feedback where Doctor_name='" + Label1.Text + "'", conn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Close();
                SqlCommand comm = new SqlCommand("update  Feedback set  answer='" + TextBox1.Text + "' where  user_name='" + TextBox4.Text + "'", conn);
                comm.ExecuteNonQuery();
                conn.Close();
            }
            else
            {
                dr.Close();
                string insertQuery = "insert into Feedback (answer) values (@answer) where user_name='" + TextBox4.Text + "'";
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.Parameters.AddWithValue("@answer", TextBox1.Text);
                comm.ExecuteNonQuery();
                conn.Close();
            }
            Session["text"] = TextBox1.Text;
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from Aptment where Doctor_name='" + Label1.Text + "'", conn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Close();
                SqlCommand comm = new SqlCommand("update Aptment set  Confirmation='" + TextBox2.Text + "' where user_name='" + TextBox3.Text + "'", conn);
                comm.ExecuteNonQuery();
                conn.Close();
            }
            else
            {
                dr.Close();
                string insertQuery = "insert into Aptment (Confirmation) values (@Confirmation) where user_name='" + TextBox3.Text + "'";
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.Parameters.AddWithValue("@Confirmation", TextBox2.Text);
                comm.ExecuteNonQuery();
                conn.Close();
            }
            Session["text"] = TextBox1.Text;
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
}