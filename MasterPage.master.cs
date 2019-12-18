using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class MasterPage : System.Web.UI.MasterPage
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
        str = "select image from userData where user_name='"+ Session["New"].ToString() +"' ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();

        reader.Read();

        Image3.ImageUrl = reader["image"].ToString();
        Session["imag"] = Image3.ImageUrl;
        reader.Close();
       
            
        }
    }
   
}
