using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for managerdisplaydl
/// </summary>
public class managerdisplaydl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
  
    public managerdisplaydl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public void mfetchifsc(string manid, out DataTable dtmanager)
    {

        mycmd = new SqlCommand("select ifsc from BankManager where BranchManagerID ='" + manid + "'", mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);

        myds = new DataSet();
        myadapter.Fill(myds, "manager");

        dtmanager = myds.Tables["manager"];
        mycon.Close();

    }
}