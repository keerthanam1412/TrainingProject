using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class setpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable d = new DataTable();
        setpassworddl sdl = new setpassworddl();
        int check;
        check = sdl.setpass(TextBox1.Text, TextBox2.Text, out d);
        if (check == 1)
        {
           
            Response.Redirect("sigin.aspx");
        }
        else
        {
            lblmsg.Text = "Login Failed";
        }
       
    }
}