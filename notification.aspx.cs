using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string sqlSelect, sqlSelect1, s2;
        sqlSelect = "SELECT Confirmation,DateOfAptment,Time FROM Aptment WHERE user_name ='" + Session["New"].ToString() + "'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(sqlSelect, con);
        SqlDataReader reader;

        try
        {
            con.Open();

            reader = cmd.ExecuteReader();
            reader.Read();

            Label3.Text = reader["Confirmation"].ToString() + " on ";
            Label6.Text = reader["DateOfAptment"].ToString() + " at sharp " + reader["Time"].ToString();

            reader.Close();
        }
        catch (Exception error)
        {
            Label3.Text = " Pending / Not set";
        }
        finally
        {
            con.Close();
        }

        sqlSelect1 = "SELECT Reply FROM Feedback WHERE user_name ='" + Session["New"].ToString() + "'";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd1 = new SqlCommand(sqlSelect1, conn);
        SqlDataReader reader1;

        try
        {
            conn.Open();
            reader1 = cmd1.ExecuteReader();
            reader1.Read();
            Label4.Text = reader1["Reply"].ToString();
            reader1.Close();
        }
        catch (Exception error)
        {
            Label4.Text = "Reply for your feedbacks will be shown here";
        }
        finally
        {
            conn.Close();
        }
        s2 = "SELECT answer FROM Feedback WHERE user_name ='" + Session["New"].ToString() + "'";
        SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd11 = new SqlCommand(s2, connn);
        SqlDataReader reader11;
        try
        {
            connn.Open();

            reader11 = cmd11.ExecuteReader();
            reader11.Read();
            Label5.Text = reader11["answer"].ToString();
            reader11.Close();
        }
        catch (Exception error)
        {
            Label5.Text = "Reply for your Questions will be shown here";
        }
        finally
        {
            connn.Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand com = new SqlCommand("delete from userData where user_name='" + Session["New"].ToString() + "'", conn);
        SqlDataReader dr = com.ExecuteReader();
        conn.Close();
        Response.Redirect("login.aspx");
    }
}