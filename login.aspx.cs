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

    }

    protected void Blogin_Click(object sender, EventArgs e)
    {
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


            conn.Open();
            string checkuser = "select count(*) from userData where user_name='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkpasswordquery = "select password from userData where user_name='" + TextBox1.Text + "'";
                SqlCommand pascom = new SqlCommand(checkpasswordquery, conn);
                string password = pascom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is correct");

                    Response.Redirect("UserPage.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('password is incorrect')</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('username is incorrect')</script>");
            }
            conn.Close();
        }

        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


            conn.Open();
            string checkuser = "select count(*) from admin where name='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkpasswordquery = "select pass from admin where name='" + TextBox1.Text + "'";
                SqlCommand pascom = new SqlCommand(checkpasswordquery, conn);
                string password = pascom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox1.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is correct");

                    Response.Redirect("apage.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('password is incorrect')</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('username is incorrect')</script>");
            }
            conn.Close();
        }
      
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


            conn.Open();
            string checkuser = "select count(*) from Doctor where pass='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkpasswordquery = "select pass from Doctor where pass='" + TextBox1.Text + "'";
                SqlCommand pascom = new SqlCommand(checkpasswordquery, conn);
                string password = pascom.ExecuteScalar().ToString();
                if (password == TextBox1.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is correct");

                    Response.Redirect("doctorp.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('password is incorrect')</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Doctor name is incorrect')</script>");
            }
            conn.Close();
        }
    }
  
}