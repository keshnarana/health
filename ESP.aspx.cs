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

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        p1.Visible = false;
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str, str1, str2;
        SqlCommand com;


        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select imageS,Name from Skin1 where Name='Acne' ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();

        reader.Read();
        Image1.ImageUrl = reader["imageS"].ToString();
        Label13.Text = reader["Name"].ToString();
        reader.Close();

        str1 = "select imageS,Name from Skin1 where Name='Sunburn' ";
        com = new SqlCommand(str1, con);
        SqlDataReader reader1 = com.ExecuteReader();

        reader1.Read();
        Image2.ImageUrl = reader1["imageS"].ToString();
        Label9.Text = reader1["Name"].ToString();
        reader1.Close();

        str2 = "select imageS,Name from Skin1 where Name='Dryskin' ";
        com = new SqlCommand(str2, con);
        SqlDataReader reader2 = com.ExecuteReader();

        reader2.Read();
        Image3.ImageUrl = reader2["imageS"].ToString();
        Label10.Text = reader2["Name"].ToString();
        reader2.Close();
        con.Close();
      
    }
    protected void Acne_onclick(object sender, ImageClickEventArgs e)
    {
        p1.Visible = true;
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str;
        SqlCommand com;


        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select Name,Symptoms,Symptoms1,Cause,Treatment,Treatment1,Treatment2,Extra from Skin1 where Name='Acne' ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();

        reader.Read();
        labelname1.Text = reader["Symptoms"].ToString();
        labela.Text = reader["Symptoms1"].ToString();
        Label1.Text = reader["Cause"].ToString();
        Label2.Text = reader["Treatment"].ToString();
        Label3.Text = reader["Treatment1"].ToString();
        Label4.Text = reader["Treatment2"].ToString();
        Label5.Text = reader["Extra"].ToString();
        Label6.Text = "The symptoms are:";
        Label7.Text = "The Treatments are:";
        Label8.Text = "The cause is";
        Label12.Text = reader["Name"].ToString();

        reader.Close();
        con.Close();



    }
    protected void Sun_onclick(object sender, ImageClickEventArgs e)
    {
        p1.Visible = true;
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str;
        SqlCommand com;


        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select Name,Symptoms,Symptoms1,Cause,Treatment,Treatment1,Treatment2,Extra from Skin1 where Name='Sunburn' ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();

        reader.Read();
        labelname1.Text = reader["Symptoms"].ToString();
        labela.Text = reader["Symptoms1"].ToString();
        Label1.Text = reader["Cause"].ToString();
        Label2.Text = reader["Treatment"].ToString();
        Label3.Text = reader["Treatment1"].ToString();
        Label4.Text = reader["Treatment2"].ToString();
        Label5.Text = reader["Extra"].ToString();
        Label6.Text = "The symptoms are:";
        Label7.Text = "The Treatments are:";
        Label8.Text = "The cause is";
        Label12.Text = reader["Name"].ToString();

        reader.Close();
        con.Close();


    }
    protected void dry_onclick(object sender, ImageClickEventArgs e)
    {
        p1.Visible = true;
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str;
        SqlCommand com;


        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select Name,Symptoms,Symptoms1,Cause,Treatment,Treatment1,Treatment2,Extra from Skin1 where Name='Dryskin' ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();

        reader.Read();
        labelname1.Text = reader["Symptoms"].ToString();
        labela.Text = reader["Symptoms1"].ToString();
        Label1.Text = reader["Cause"].ToString();
        Label2.Text = reader["Treatment"].ToString();
        Label3.Text = reader["Treatment1"].ToString();
        Label4.Text = reader["Treatment2"].ToString();
        Label5.Text = reader["Extra"].ToString();
        Label6.Text = "The symptoms are:";
        Label7.Text = "The Treatments are:";
        Label8.Text = "The cause is";
        Label12.Text = reader["Name"].ToString();


        reader.Close();
        con.Close();


    }
}