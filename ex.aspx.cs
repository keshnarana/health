using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str, str1, str2, str3;
        SqlCommand com;


        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select * from Exercise where name='Weighted Bird Dog' ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();

        reader.Read();

        Image1.ImageUrl = reader["i1"].ToString();
        Image2.ImageUrl = reader["i2"].ToString();
        Label1.Text = reader["name"].ToString();
        Label2.Text = reader["sets"].ToString();
        Label3.Text = reader["reps"].ToString();
        par1.InnerText = reader["p1"].ToString();
        par2.InnerText = reader["p2"].ToString();
        reader.Close();

        str1 = "select * from Exercise where name=' Windmill Split Squat' ";
        com = new SqlCommand(str1, con);
        SqlDataReader reader1 = com.ExecuteReader();

        reader1.Read();

        Image3.ImageUrl = reader1["i1"].ToString();
        Image4.ImageUrl = reader1["i2"].ToString();
        Label4.Text = reader1["name"].ToString();
        Label5.Text = reader1["sets"].ToString();
        Label6.Text = reader1["reps"].ToString();
        p2.InnerText = reader1["p1"].ToString();
        p3.InnerText = reader1["p2"].ToString();
        reader1.Close();

        str2 = "select * from Exercise where name='Rear Lunge Chop' ";
        com = new SqlCommand(str2, con);
        SqlDataReader reader2 = com.ExecuteReader();

        reader2.Read();

        Image5.ImageUrl = reader2["i1"].ToString();
        Image6.ImageUrl = reader2["i2"].ToString();
        Label7.Text = reader2["name"].ToString();
        Label8.Text = reader2["sets"].ToString();
        Label9.Text = reader2["reps"].ToString();
        p4.InnerText = reader2["p1"].ToString();
        p5.InnerText = reader2["p2"].ToString();
        reader2.Close();

        str3 = "select * from Exercise where name='Pushup Climbers' ";
        com = new SqlCommand(str3, con);
        SqlDataReader reader3 = com.ExecuteReader();

        reader3.Read();

        Image7.ImageUrl = reader3["i1"].ToString();
        Image8.ImageUrl = reader3["i2"].ToString();
        Label10.Text = reader3["name"].ToString();
        Label11.Text = reader3["sets"].ToString();
        Label12.Text = reader3["reps"].ToString();
        p6.InnerText = reader3["p1"].ToString();
        p7.InnerText = reader3["p2"].ToString();
        reader3.Close();
        con.Close();
    }
}