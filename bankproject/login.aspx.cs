using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable d = new DataTable();
        customerdl cdl = new customerdl();
        int check;
        check = cdl.login(tbcustomer.Text, tbpassword.Text, out d);
        if (check == 1)
        {
            Session["id"] = tbcustomer.Text;
            lblmsg.Text = "Login Successfull";
          
        }
        else
        {
            lblmsg.Text = "Login Failed";
        }
        Response.Redirect("customerhome.aspx");

    }
}