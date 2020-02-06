using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class check : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    protected void Page_Load(object sender, EventArgs e)
    {
        managerdisplaydl md = new managerdisplaydl();
        DataTable d;
     

        md.mfetchifsc(Session["mid"].ToString(), out d);
        string ifsc1 = d.Rows[0]["ifsc"].ToString();

        mycon = new SqlConnection("server=WSLKCMP2FTR1-01\\SQLEXPRESS;user id=sa;password=password@1;database=BankDatabase");
        squery = "select * from BankAccountDetails where ifsc='" + ifsc1 + "'";
        myadapter = new SqlDataAdapter(squery, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "manager");
        GridView1.DataSource = myds;
        GridView1.DataMember = "manager";
        GridView1.DataBind();
    }
}