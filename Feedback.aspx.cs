using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {

            FillDoctorInfo();


        }
        else
        {
            Console.Write("??");
        }

    }

    private void FillDoctorInfo()
    {
        ddlDoc.Items.Clear();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT Doctor_name,Speciality,Availability,Phone FROM Doctor", con);
        SqlDataReader reader;

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                ListItem newItem = new ListItem();
                newItem.Text = reader["Doctor_name"].ToString();
                newItem.Value = reader["Doctor_name"].ToString();
                ddlDoc.Items.Add(newItem);
            }
            reader.Close();
        }
        catch (Exception err)
        {
            Label2.Text = "Error reading list of names. ";
            Label2.Text += err.Message;

        }
        finally
        {
            con.Close();
        }



    }

    protected void Blogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default3.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        

      

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();

        string insertQuery = "insert into Feedback (user_name,question,Doctor_name,Feedback) values (@username, @feedback,@d,@a)";
        SqlCommand com = new SqlCommand(insertQuery, con);

        com.Parameters.AddWithValue("@username", Session["New"].ToString());
        com.Parameters.AddWithValue("@feedback", TextBox2.Text);
        com.Parameters.AddWithValue("@d", ddlDoc.SelectedItem.Value);
        com.Parameters.AddWithValue("@a", TextBox1.Text);
        com.ExecuteNonQuery();
        Label1.Text = "Thank you.Your Question will soon be answered.";

        con.Close();

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Thank you. Reply will soon be given.')</script>");    
        
    }
}