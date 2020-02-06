using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class managerlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable d = new DataTable();
        managerlogindl cdl = new managerlogindl();
        int check;
        check = cdl.managerlogin(TextBox1.Text, TextBox2.Text, out d);
        if (check == 1)
        {
            Session["mid"] = TextBox1.Text;
           msglbl.Text = "Login Successfull";
            Response.Redirect("managerhome.aspx");

        }
        else
        {
            msglbl.Text = "Login Failed";
        }
    }
}