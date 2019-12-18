using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using MessagingToolkit.QRCode.Codec;
using System.Drawing.Imaging;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
  
    protected void LoginButton_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "userimg/u1.jpg";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "userimg/u2.jpg";

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "userimg/u3.jpeg";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "userimg/u4.jpg";
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "userimg/u5.jpg";
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "userimg/u6.jpg";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand comm = new SqlCommand("update userData set image='" + Label2.Text + "', phone_no='" + Textphno.Text + "', email='" + TextBox1.Text + "' where user_name='" + Session["New"].ToString() + "'", conn);
                comm.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Updated')</script>");
                conn.Close();
                try
                {
                    SqlCommand cmd;
                    SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    connn.Open();
                    cmd = new SqlCommand("select * from BlogBox where user_name='" + Session["New"].ToString() + "'", connn);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows == true)
                    {
                        dr.Close();

                        SqlCommand com = new SqlCommand("update BlogBox set image='" + Label2.Text + "' where user_name='" + Session["New"].ToString() + "'", connn);

                        com.ExecuteNonQuery();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Updated')</script>");
                        connn.Close();

                    }
                    else
                    {
                        dr.Close();
                        connn.Close();
                    }
                
                }
                catch (Exception ex)
                {
                    Response.Write(""+ ex.ToString());
                }

                try
                {
                    SqlCommand cmd;
                    SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    connn.Open();
                    cmd = new SqlCommand("select * from Reply where R_user='" + Session["New"].ToString() + "'", connn);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows == true)
                    {
                        dr.Close();

                        SqlCommand com = new SqlCommand("update Reply set R_image='" + Label2.Text + "' where R_user='" + Session["New"].ToString() + "'", connn);

                        com.ExecuteNonQuery();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Updated')</script>");
                        connn.Close();

                    }
                    else
                    {
                        dr.Close();
                        connn.Close();
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("" + ex.ToString());
                }

              
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = "userimg/u7.jpg";
    }
}