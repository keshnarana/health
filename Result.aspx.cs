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
public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Image1.Visible = false;
            bmi.Text += Session["bmi"].ToString();
            wh.Text += Session["wh"].ToString();
            lbmm.Text += Session["lbmm"].ToString();
            bf.Text += Session["bf"].ToString();
            f.Text += Session["f"].ToString();
            lstyle.Text += Session["lstyle"].ToString();
            Label1.Text += Session["Label1"].ToString();
            string a = Session["selection"].ToString();
            Label9.Text += Session["shape"].ToString();
            Label10.Text += Session["calorie"].ToString();
            int b;

            b = Convert.ToInt32(a);
            b = int.Parse(a);                      // gender radio-btn selection
            if (b == 1)
            {
                decimal x, y, x1,s;
                s = Convert.ToDecimal(Label9.Text);
                s = decimal.Parse(Label9.Text);
                if (s <= 75)
                {
                    
                    Label5.Text = "Pear";
                }
                else if (s >= 76 && s <= 89)
                {
                   
                    Label5.Text = "Avcado";
                }
                else
                {
                   
                    Label5.Text = "Apple";
                }
                x = Convert.ToDecimal(bmi.Text);
                x = decimal.Parse(bmi.Text);
                if (x <= 18.4M)
                {
                    Label3.Text = "Under Weight";
                }
                else if (18.5M <= x && x <= 24.9M)
                { Label3.Text = "Normal Weight"; }
                else if (25M <= x && x <= 29.9M)
                { Label3.Text = "over Weight"; }
                else
                    Label3.Text = "Obese";

                y = Convert.ToDecimal(wh.Text);
                y = decimal.Parse(wh.Text);
                if (y <= 0.80M)
                {
                    Label4.Text = "Low";
                   
                }
                else if (y >= 0.81M && y <= 0.85M)
                {
                    Label4.Text = "Moderate";
                    
                }
                else
                {
                    Label4.Text = "High";
                   
                }
                Session["body"] = Label5.Text;
                Label6.Text = Session["bf"].ToString();

                x1 = Convert.ToDecimal(bf.Text);
                x1 = decimal.Parse(bf.Text);
                if (x1 >= 10 && x1 <= 13)
                    Label7.Text = "Essential fat";
                else if (x1 >= 14 && x1 <= 20)
                    Label7.Text = "Athlete";
                else if (x1 >= 21 && x1 <= 24)
                    Label7.Text = "Fitness";
                else if (x1 >= 25 && x1 <= 31)
                    Label7.Text = "Acceptable";
                else
                    Label7.Text = "Obese";
                Label8.Text = "Ms. " + Session["New"].ToString();
            }
            else
            {

                decimal x, y, x1, s;
                s = Convert.ToDecimal(Label9.Text);
                s = decimal.Parse(Label9.Text);
                if (s <= 75)
                {

                    Label5.Text = "Pear";
                }
                else if (s >= 76 && s <= 89)
                {

                    Label5.Text = "Avcado";
                }
                else
                {

                    Label5.Text = "Apple";
                }
                x = Convert.ToDecimal(bmi.Text);
                x = decimal.Parse(bmi.Text);
                if (x <= 18.4M)
                {
                    Label3.Text = "Under Weight";
                }
                else if (18.5M <= x && x <= 24.9M)
                { Label3.Text = "Normal Weight"; }
                else if (25M <= x && x <= 29.9M)
                { Label3.Text = "over Weight"; }
                else
                    Label3.Text = "Obese";

                y = Convert.ToDecimal(wh.Text);
                y = decimal.Parse(wh.Text);
                if (y <= 0.95M)
                {
                    Label4.Text = "Low";
                    Label5.Text = "Pear";
                }
                else if (y >= 0.96M && y <= 1.00M)
                {
                    Label4.Text = "Moderate";
                    Label5.Text = "Avcado";
                }
                else
                {
                    Label4.Text = "High";
                    Label5.Text = "Apple";
                }
                Session["body"] = Label5.Text;
                Label6.Text = Session["bf"].ToString();

                x1 = Convert.ToDecimal(bf.Text);
                x1 = decimal.Parse(bf.Text);
                if (x1 >= 2 && x1 <= 5)
                    Label7.Text = "Essential fat";
                else if (x1 >= 6 && x1 <= 13)
                    Label7.Text = "Athlete";
                else if (x1 >= 14 && x1 <= 17)
                    Label7.Text = "Fitness";
                else if (x1 >= 18 && x1 <= 25)
                    Label7.Text = "Acceptable";
                else
                    Label7.Text = "Obese";
                Label8.Text = "Mr. " + Session["New"].ToString();
            }
        }
    }
    protected void  click(object sender, ImageClickEventArgs e)
{
  try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from result where user_name='" + Session["New"].ToString() + "'", conn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Close();
                SqlCommand comm = new SqlCommand("update result set  bmi='" + bmi.Text + "',wh='" + bmi.Text + "',lbmm='" + lbmm.Text + "',bf='" + bf.Text + "',f='" + f.Text + "',user_name='" + Session["New"].ToString() + "' where user_name='" + Session["New"].ToString() + "'", conn);

                comm.ExecuteNonQuery();
                Response.Redirect("User.aspx");

               
                conn.Close();
                
            }
            else
            {
                dr.Close();
                string insertQuery = "insert into result (bmi,wh,lbmm,bf,f,user_name) values (@bmi,@wh, @lbmm, @bf, @f,@user_name)";
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.Parameters.AddWithValue("@bmi", bmi.Text);
                comm.Parameters.AddWithValue("@wh", wh.Text);
                comm.Parameters.AddWithValue("@lbmm", lbmm.Text);
                comm.Parameters.AddWithValue("@bf", bf.Text);
                comm.Parameters.AddWithValue("@f", f.Text);
                comm.Parameters.AddWithValue("@user_name", Session["New"].ToString());
                comm.ExecuteNonQuery();
                Response.Redirect("User.aspx");

                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
}

  
    protected void Butt_Click(object sender, EventArgs e)
    {
        Image1.Visible = true;
        QRCodeEncoder encoder = new QRCodeEncoder();
        Bitmap bi = encoder.Encode(Label8.Text +
           "\nBmi " + bmi.Text +
            "\nWHR " + wh.Text +
            "\nLBM " + lbmm.Text +
            "\nBF " + bf.Text + "\nWeight:" + Label3.Text + "\nHealthRisk " + Label4.Text + "\nBodyShape " +
            Label5.Text + "\nBodyFat " + Label7.Text );
        bi.Save(Server.MapPath("~/images/first.jpg"), ImageFormat.Jpeg);
        Image1.ImageUrl = "~/images/first.jpg";
    }

}