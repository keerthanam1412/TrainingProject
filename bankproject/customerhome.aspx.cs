using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class customerhome : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label1.Text = Session["id"].ToString();
        }
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Label1.Text = Session["id"].ToString();
        string bal;
        balancedl dl = new balancedl();

        bal = dl.balview(Session["id"].ToString());

        Label2.Text = bal;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Session["id"] = null;
        Response.Redirect("login.aspx");
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("modify.aspx");
    }
}