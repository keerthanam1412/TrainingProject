using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class addcustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
       // Label2.Text = Session["mid"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        addcustomerdl md = new addcustomerdl();
        DataTable d;
        DataTable d1;
     
        md.mfetchifsc(Session["mid"].ToString(), out d);
        string ifsc1 = d.Rows[0]["ifsc"].ToString();

        md.insertdetails(TextBox1.Text,TextBox2.Text, TextBox3.Text, TextBox4.Text, ifsc1,TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text, TextBox11.Text, TextBox12.Text, TextBox13.Text, TextBox14.Text, TextBox15.Text, TextBox16.Text, out d1);
        Label1.Text = "Details inserted";
     
    }

    
}