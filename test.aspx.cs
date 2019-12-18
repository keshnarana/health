using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ButtonS_Click(object sender, EventArgs e)
    {

        Session["selection"] = RadioButtonList1.SelectedIndex;
       
        double j, k, p, r, abc, centim, shape,l;
        string assignedIDs = Request.Form["assignedIDHiddenInput"];
        l = double.Parse(assignedIDs);

       abc= (double.Parse(TextBoxFoot.Text) * 12) + double.Parse(TextBoxinch.Text);

       centim = abc * 2.54;
       p = (centim * 0.01);                                            // converting centimeters to metr
        r = p * p;
        j = (double.Parse(TextBoxW.Text)) / r;                            // kg/mtr(sqr)
        Session["bmi"] = j.ToString("0.00");                                 // BMI

        k = double.Parse(TextBoxWaist.Text) / double.Parse(TextBoxHip.Text);  // w/h
        Session["wh"] = k.ToString("0.00");                                // Waist Hip

        shape=(double.Parse(TextBoxWaist.Text)/double.Parse(TextBox1.Text) * 100); // waist/chest * 100
        Session["shape"] = shape.ToString("0.00");                                     //shape
   
        
        if (RadioButtonList1.SelectedIndex == 0)                        //  male
        {

            double i, q;
            i = (0.407 * (double.Parse(TextBoxW.Text)) + (0.267 * centim) - 19.2); // 0.407 weight + 0.267 height - 19.2
            Session["lbmm"] = i.ToString("0.00");                                   //Lean Body Mass

            q = (1.20 * j) + (0.23 * double.Parse(assignedIDs)) - (10.8 * 1) - 5.4;   //1.20* bmi + 0.23* age - 10.8 *gender(0=female/1=male)
            Session["bf"] = q.ToString("0.00");                                     // Body fat

            {
                string calorie;                                                //req calorie intake
             if (l >= 30 )
            {
                  if( DropDownList1.SelectedValue == "Sedentary")
                 { calorie = "2400";
                 Session["calorie"] = calorie.ToString();
                 }
                 else if ( DropDownList1.SelectedValue == "Moderately Active")
                  { calorie = "2600-2800"; 
                     Session["calorie"] = calorie.ToString();
                 }
                  else if (DropDownList1.SelectedValue == "Very Active")
                 { calorie = "3000";
                 Session["calorie"] = calorie.ToString();
                 }
            }
            else if(l >= 31 && 1 <= 50)
            {
                 if( DropDownList1.SelectedValue == "Sedentary")
                 { calorie = "2200";
                 Session["calorie"] = calorie.ToString();
                 }
                  else if ( DropDownList1.SelectedValue == "Moderately Active")
                 { calorie = "2400-2600";
                 Session["calorie"] = calorie.ToString();
                 }
                 else if (DropDownList1.SelectedValue == "Very Active")
                 { calorie = "2800-3000";
                 Session["calorie"] = calorie.ToString();
                 }
            }
            else 
            {
                 if ( DropDownList1.SelectedValue == "Sedentary")
                 { calorie = "2000";
                 Session["calorie"] = calorie.ToString();
                 }
                 else if ( DropDownList1.SelectedValue == "Moderately Active")
                 { calorie = "2200-2400";
                 Session["calorie"] = calorie.ToString();
                 }
                  else if (DropDownList1.SelectedValue == "Very Active")
                 { calorie = "2400-2800";
                 Session["calorie"] = calorie.ToString();
                  }
            }
            
           }

          
        }

        else                                                     //female
        {
            double i, q;
        
            i = (0.252 * (double.Parse(TextBoxW.Text)) + (0.473 * centim) - 48.3);
            Session["lbmm"] = i.ToString("0.00");
            q = (1.20 * j) + (0.23 * double.Parse(assignedIDs)) - 5.4;
            Session["bf"] = q.ToString("0.00");
            { string calorie;
             if (l >= 30 )
            {
                  if( DropDownList1.SelectedValue == "Sedentary")
                 { calorie = "2000";
                 Session["calorie"] = calorie.ToString();
                 }
                 else if ( DropDownList1.SelectedValue == "Moderately Active")
                 { calorie = "2000-2200";
                 Session["calorie"] = calorie.ToString();
                 }
                  else if (DropDownList1.SelectedValue == "Very Active")
                 { calorie = "2400";
                 Session["calorie"] = calorie.ToString();
                 }
            }
            else if(l >= 31 && 1 <= 50)
            {
                 if( DropDownList1.SelectedValue == "Sedentary")
                 { calorie = "1800";
                 Session["calorie"] = calorie.ToString();
                 }
                  else if ( DropDownList1.SelectedValue == "Moderately Active")
                 { calorie = "2000";
                 Session["calorie"] = calorie.ToString();
                 }
                 else if (DropDownList1.SelectedValue == "Very Active")
                 { calorie = "2200";
                 Session["calorie"] = calorie.ToString();
                 }
            }
            else 
            {
                 if ( DropDownList1.SelectedValue == "Sedentary")
                 { calorie = "1600";
                 Session["calorie"] = calorie.ToString();
                 }
                 else if ( DropDownList1.SelectedValue == "Moderately Active")
                 { calorie = "1800";
                 Session["calorie"] = calorie.ToString();
                 }
                  else if (DropDownList1.SelectedValue == "Very Active")
                 { calorie = "2000-2200";
                 Session["calorie"] = calorie.ToString();
                 }
            }
            }
            }
       
        int count = 0;
        if (RadioButtonList2.SelectedIndex == 0)
        {
            count += 1;
        }
        if (RadioButtonList3.SelectedIndex == 0)
        {
            count += 1;
        }
        if (RadioButtonList4.SelectedIndex == 1)
        {
            count += 1;
        }
        if (RadioButtonList5.SelectedIndex == 0)
        {
            count += 1;
        }
        if (RadioButtonList6.SelectedIndex == 0)
        {
            count += 1;
        }
        else
        {
            count += 0;
        }

        if (count <= 1)
        {
            Session["f"] = "very Good".ToString();
        }
        if (count == 2)
        {
            Session["f"] = "Good".ToString();
        }
        else if (count == 3)
        {
            Session["f"] = "Not bad".ToString();
        }
        else if (count == 4)
        {
            Session["f"] = "Bad".ToString();
        }
        else if (count == 5)
        {
            Session["f"] = "Very bad".ToString();
        }

        if (RadioButtonList7.SelectedIndex == 0 && RadioButtonList8.SelectedIndex == 0)
        {
            Session["lstyle"] = "Healthy".ToString();
        }
        else if (RadioButtonList7.SelectedIndex == 0 || RadioButtonList8.SelectedIndex == 0)
        {
            Session["lstyle"] = "Improve your lifestyle".ToString();
        }
        else
        {
            Session["lstyle"] = "Not healthy.".ToString();
        }
        if (DropDownList1.SelectedIndex == 0)
        {
            Session["Label1"] = "Need to exercise";
        }
        else
        {
            Session["Label1"] = "Fit";
        }
        Response.Redirect("Result.aspx");

    }


    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            TextBox1.BackColor = System.Drawing.Color.Aquamarine;
            TextBoxFoot.BackColor = System.Drawing.Color.Aquamarine;
            txtDATE_OF_BIRTH.BackColor = System.Drawing.Color.Aquamarine;
            TextBoxA.BackColor = System.Drawing.Color.Aquamarine;
            TextBoxinch.BackColor = System.Drawing.Color.Aquamarine;
            TextBoxHip.BackColor = System.Drawing.Color.Aquamarine;
            TextBoxW.BackColor = System.Drawing.Color.Aquamarine;
            TextBoxWaist.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList1.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList2.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList3.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList4.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList5.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList6.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList7.BackColor = System.Drawing.Color.Aquamarine;
            RadioButtonList8.BackColor = System.Drawing.Color.Aquamarine;
            DropDownList1.BackColor = System.Drawing.Color.Aquamarine;
        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            TextBox1.BackColor = System.Drawing.Color.LightPink;
            TextBoxFoot.BackColor = System.Drawing.Color.LightPink;
            txtDATE_OF_BIRTH.BackColor = System.Drawing.Color.LightPink;
            TextBoxA.BackColor = System.Drawing.Color.LightPink;
            TextBoxinch.BackColor = System.Drawing.Color.LightPink;
            TextBoxHip.BackColor = System.Drawing.Color.LightPink;
            TextBoxW.BackColor = System.Drawing.Color.LightPink;
            TextBoxWaist.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList1.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList2.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList3.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList4.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList5.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList6.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList7.BackColor = System.Drawing.Color.LightPink;
            RadioButtonList8.BackColor = System.Drawing.Color.LightPink;
            DropDownList1.BackColor = System.Drawing.Color.LightPink;
        }
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

