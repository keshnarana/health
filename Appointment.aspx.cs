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

public partial class Default6 : System.Web.UI.Page
{
    protected DataSet ds;
    protected SqlDataAdapter dtAdapter;
    protected DataTable appTable;


    protected void Blogout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default3.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel5.Visible = false;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        ds = new DataSet();

        dtAdapter = new SqlDataAdapter("SELECT * FROM Aptment", con);
        dtAdapter.Fill(ds, "Aptment");
        appTable = ds.Tables["Aptment"];


       
        if (!this.IsPostBack)
        {
          
            FillDoctorInfo();

            DateTime slDate = DateTime.Now;
            calD.SelectedDate = getFreeDate(slDate);
            this.DataBind();
        }
        else
        {
            Console.Write("??");
        }
        con.Close();
    }
    protected void ddlApointment_SelectedIndexChanged(object sender, EventArgs e)
    {

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
            lblMessage.Text = "Error reading list of names. ";
            lblMessage.Text += err.Message;

        }
        finally
        {
            con.Close();
        }
    }
    protected void calD_DayRender(object sender, DayRenderEventArgs e)
    {
        Panel1.Visible = true;
        p1.Visible = true;
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;

            e.Cell.ForeColor = System.Drawing.Color.Red;

            e.Cell.Font.Strikeout = true;


        }
        if (appTable.Rows.Count > 0)
        {
            DateTime testDate;
            foreach (DataRow testRow in appTable.Rows)
            {
                testDate = (DateTime)testRow["DateOfAptment"];
                if (testDate.Date == e.Day.Date)
                {
                    e.Cell.BackColor = System.Drawing.Color.LightBlue;
                    Label lbl = new Label();
                    lbl.Text = "<br/> Slot Taken!";
                    e.Cell.Controls.Add(lbl);
                }
            }
        }
      

      
    }

    protected void calD_SelectionChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        p1.Visible = true;
        DateTime slDate = calD.SelectedDate;
        calD.SelectedDate = getFreeDate(slDate);

        ddlApointment.Items.Clear();

        if (ddlDoc.SelectedValue=="Dr. Dev Devani")
        {
            switch (calD.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Sunday:


                    ddlApointment.Items.Add("--.--");


                    break;
                default:
                    ddlApointment.Items.Add("12:45");


                    ddlApointment.Items.Add("15:00");

                    break;
            }
        }
        else if (ddlDoc.SelectedValue == "Dr. Jack Son")
        {
            switch (calD.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Thursday:
                    ddlApointment.Items.Add("10:00");

                    ddlApointment.Items.Add("12:30");

                    break;
                case DayOfWeek.Friday:
                    ddlApointment.Items.Add("10:00");

                    ddlApointment.Items.Add("12:30");

                    break;
                default:

                    ddlApointment.Items.Add("--.--");


                    break;
            }
        }
        else if (ddlDoc.SelectedValue == "Dr. Rita Malan")
        {
            switch (calD.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Sunday:


                    ddlApointment.Items.Add("--.--");


                    break;
                default:
                    ddlApointment.Items.Add("12:45");


                    ddlApointment.Items.Add("15:00");

                    break;
            }
        }
        else if (ddlDoc.SelectedValue == "Dr. Mansuhk Parekh")
        {
            switch (calD.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Monday:

                    ddlApointment.Items.Add("10:45");
                    ddlApointment.Items.Add("12:30");

                    break;
                case DayOfWeek.Tuesday:

                    ddlApointment.Items.Add("10:45");
                    ddlApointment.Items.Add("12:30");

                    break;
                default:

                    ddlApointment.Items.Add("--.--");
                    break;
            }
        }
        else if (ddlDoc.SelectedValue == "Dr. Rose Arse")
        {
            switch (calD.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Wednesday:
                    ddlApointment.Items.Add("10:00");

                    ddlApointment.Items.Add("11:45");


                    break;
                default:
                    ddlApointment.Items.Add("--.--");
                    break;
            }
        }
        else
        {
            switch (calD.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Sunday:


                    ddlApointment.Items.Add("--.--");


                    break;
                default:
                    ddlApointment.Items.Add("12:45");


                    ddlApointment.Items.Add("15:00");

                    break;
            }
        }
    }
    protected void ddlDoc_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        p1.Visible = true;
        string sqlSelect;
        sqlSelect = "SELECT  Doctor, Doctor_name,Speciality,Availability,Phone FROM Doctor WHERE Doctor_name ='" + ddlDoc.SelectedItem.Value + "'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(sqlSelect, con);
        SqlDataReader reader;

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();

            lblReference.Text = "Reference #: " + reader["Doctor_name"].ToString();
            Image1.ImageUrl = reader["Doctor"].ToString();
            dName.Text = reader["Doctor_name"].ToString();
            Lsp.Text = reader["Speciality"].ToString();
            Lavab.Text = reader["Availability"].ToString();

            Lphone.Text = reader["Phone"].ToString();

            reader.Close();
        }
        catch (Exception error)
        {
            lblMessage.Text = "Couldn't perform your request " + error;
        }
        finally
        {
            con.Close();
        }


    }
    private System.DateTime getFreeDate(DateTime slDate)
    {
        if (appTable.Rows.Count > 0)
        {
            DateTime testDate;
            bool checkDateOK = false;
            while (!checkDateOK)
            {
                checkDateOK = true;
                foreach (DataRow testRow in appTable.Rows)
                {
                    testDate = (DateTime)testRow["DateOfAptment"];
                    if (testDate.Date == slDate.Date)
                    {
                        checkDateOK = false;
                        slDate = slDate.AddDays(1);
                    }
                }
            }
        }
        return slDate;
    }
    protected void btnBooking_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
          SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string insertSQL;
        insertSQL = "INSERT INTO Aptment (";
        insertSQL += "Doctor_name, DateOfAptment, Time, user_name ) ";
        insertSQL += "VALUES (";
        insertSQL += "@doctor_name, @DateOfAptment, @Time, @uname)";


        SqlCommand cmd = new SqlCommand(insertSQL, con);

        cmd.Parameters.AddWithValue("@doctor_name", dName.Text);

        cmd.Parameters.AddWithValue("@DateOfAptment", calD.SelectedDate.Date.ToLongDateString());
        cmd.Parameters.AddWithValue("@Time", ddlApointment.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@uname", Session["New"].ToString());

        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
            lblMessage.Text = added.ToString() + " booking completed. Confirmation will be given soon.";
          
        }
        catch (Exception err)
        {
            lblMessage.Text = "Couldn't perform your request " + err;
        }
        finally
        {
            con.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Booking saved. Confirmation will soon be given')</script>");
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("UserPage.aspx");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('User Deleted')</script>");
     
    }
}