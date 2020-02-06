using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class managerhome : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mid"] == null)
        {
            Response.Redirect("managerlogin.aspx");
        }
        else
        {
            Label1.Text = Session["mid"].ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["mid"] = null;
        Response.Redirect("managerlogin.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("addcustomer.aspx");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("check.aspx");
        
    }
}