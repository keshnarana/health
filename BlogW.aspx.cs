using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label4.Text = Session["New"].ToString();
          
            BindRepeaterData();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * from BlogBox", con);
            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {

                    ListItem newItem = new ListItem();
                    newItem.Text = reader["Title"].ToString();
                    newItem.Value = reader["Title"].ToString();
                   DropDownList1.Items.Add(newItem);
                }
                reader.Close();
            }
            catch (Exception err)
            {
                lblMessage.Text = "Error reading list of Titles. ";
                lblMessage.Text += err.Message;

            }
            finally
            {
                con.Close();
            }
        }
    }
    private void BindRepeaterData()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT BlogBox.Title, BlogBox.user_name, BlogBox.Blog, BlogBox.Pdate, BlogBox.image,Reply.R_Date, Reply.R_user, Reply.R_image, Reply.BReply FROM  BlogBox LEFT JOIN Reply ON BlogBox.Title = Reply.Title order by Pdate desc", conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Repeater1.Visible = true;
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        else
        {
            Repeater1.Visible = false;
        }
        conn.Close();


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into BlogBox (user_name,Title,Blog,Pdate,image) values (@user_name,@Title,@Blog,@Pdate,@image)", conn);
        cmd.Parameters.AddWithValue("@user_name", Session["New"].ToString());
        cmd.Parameters.AddWithValue("@Title", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Blog", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Pdate", DateTime.Now);
        cmd.Parameters.AddWithValue("@image", Session["imag"].ToString());
       
        cmd.ExecuteNonQuery();
        conn.Close();
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        BindRepeaterData();
    }
  
    protected void rep1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into Reply (Title,R_user,R_image,BReply,R_Date) values (@Title,@R_user,@R_image,@BReply,@R_Date)", conn);
        cmd.Parameters.AddWithValue("@R_user", Session["New"].ToString() );
        cmd.Parameters.AddWithValue("@Title", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@BReply", TextBox3.Text);
        cmd.Parameters.AddWithValue("@R_Date", DateTime.Now);
        cmd.Parameters.AddWithValue("@R_image", Session["imag"].ToString());

        cmd.ExecuteNonQuery();
        conn.Close();
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        BindRepeaterData();
        Label5.Text = "Reply sent";

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Breply.aspx");
    }
}