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
using System.Drawing;
using System.Drawing.Imaging;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            GenerateID();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from userData where user_name='" + Textusrnm.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Redirect("r.aspx");
                Response.Write("user exists. Plz give another name");
            }

            conn.Close();
        }

    }
    protected void GenerateID()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand com = new SqlCommand("Select Count(id) from userData", conn);
        int i = Convert.ToInt32(com.ExecuteScalar());
        conn.Close();
        i++;
        LID.Text = i.ToString();
    }
    protected void Buttonsub_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand cmd;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            cmd = new SqlCommand("select * from userData where phone_no='" + Textphno.Text + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                Label1.Text = "this user already exist";
            }
            else
            {
                dr.Close();
                string insertQuery = "insert into userData (id,user_name,password,phone_no,image) values (@id,@username, @pass, @phoneno,@image)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@id", LID.Text);
                com.Parameters.AddWithValue("@username", Textusrnm.Text);
                com.Parameters.AddWithValue("@pass", Textpass.Text);
                com.Parameters.AddWithValue("@phoneno", Textphno.Text);
                com.Parameters.AddWithValue("@image", "userimg/u1.jpg");
                com.ExecuteNonQuery();
                Response.Redirect("login.aspx");
                Response.Write("registeration success");

                conn.Close();
                GenerateID();
            }
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }

    

}