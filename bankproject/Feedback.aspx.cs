using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Feedback : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable d;
        feedbackdl md1 = new feedbackdl();
        md1.insertfeedback(TextBox3.Text, TextBox4.Text, TextBox5.Text,out d);
        Label4.Text = "Submitted succesfully";
    }
}