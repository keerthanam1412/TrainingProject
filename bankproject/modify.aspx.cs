using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable d = new DataTable();
        modifydl mdl = new modifydl();
        long phno = long.Parse(TextBox2.Text.ToString());
        
        mdl.modify(Session["id"].ToString(), TextBox1.Text,phno, out d);
        lblmsg.Text = "Details updated";
        /*if (check == 1)
        {
  
            lblmsg.Text = "Details updated";

        }
        else
        {
            lblmsg.Text = "Updation failed";
        }*/
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerhome.aspx");
    }
}