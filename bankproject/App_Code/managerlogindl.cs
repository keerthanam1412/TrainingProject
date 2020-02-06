using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



/// <summary>
/// Summary description for managerlogindl
/// </summary>
public class managerlogindl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;

    public managerlogindl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public int managerlogin(string managerid, string password, out DataTable dtmanager)
    {

        mycmd = new SqlCommand("select BranchManagerID,password from BankManager where BranchManagerID='" + managerid + "' and password='" + password + "'", mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);


        myds = new DataSet();
        myadapter.Fill(myds, "manager");

        dtmanager = myds.Tables["manager"];

        if (dtmanager.Rows.Count != 0)

        {

            return 1;

        }

        else

        {

            return 0;
        }
    }
}