using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class transaction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["id"] = "llll";
        //Label1.Text = Session["id"].ToString();
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable d = new DataTable();
        DataTable d1 = new DataTable();
        transactiondl tr = new transactiondl();
        long send_accno;
        string sen_ifsc;
        float send_bal;
        d1= tr.sendervalidate(Session["id"].ToString());
        int check = tr.validate(TextBox3.Text, TextBox4.Text, out d);
        if (check == 1)
        {
            send_bal=float.Parse(d1.Rows[0]["bal"].ToString());
            send_accno = long.Parse(d1.Rows[0]["Account_No"].ToString());
            sen_ifsc = d1.Rows[0]["IFSC"].ToString();
            Label2.Text = send_accno.ToString();
            Label3.Text = sen_ifsc.ToString();
            if((send_bal> float.Parse(TextBox5.Text)) && (send_accno !=long.Parse(TextBox3.Text.ToString())))
            {
                tr.tranins(send_accno, TextBox3.Text, sen_ifsc, TextBox4.Text, float.Parse(TextBox5.Text));
                tr.updatemin(send_accno, sen_ifsc, float.Parse(TextBox5.Text));
                tr.tranins1(TextBox3.Text, send_accno, TextBox4.Text, sen_ifsc, float.Parse(TextBox5.Text));
                tr.updateplus(TextBox3.Text, TextBox4.Text, float.Parse(TextBox5.Text));
                msglbl.Text = "trans created successfully";
            }
            else
            {
                msglbl.Text = "Insufficient amount or u are try to send yourself ";
            }
             
        }
        else
        {
            msglbl.Text = "Account details doesnt match";
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerhome.aspx");
    }
}