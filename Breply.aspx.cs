using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label4.Text = Session["New"].ToString();
            Panel2.Visible = false;
            BindRepeaterData();

          
            }
        
    }
    private void BindRepeaterData()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM  Reply  where R_user='" + Session["New"].ToString() + "'  order by R_date desc", conn);
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
 

    protected void rep1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
   

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
}