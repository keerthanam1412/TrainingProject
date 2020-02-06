using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class sigin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable d = new DataTable();
        DataTable d1 = new DataTable();
        signindl sidl = new signindl();
        s2 os2 = new s2();
        
       
       
       int check=sidl.signin(TextBox1.Text, TextBox2.Text, out d);
        
        if (check == 1)
        {
            os2.sin(TextBox1.Text, TextBox2.Text,  out d1);
           Response.Redirect("login.aspx");
            msglbl.Text = "sign in suss";
        }
        else
        {
            msglbl.Text = "signin Failed";
        }
    }
}