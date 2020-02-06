using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for s2
/// </summary>
public class s2
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    public s2()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public int sin(string custid, string password, out DataTable dtcustomer11)
    {


            mycmd = new SqlCommand("insert into Customer (cust_id,cust_password) values('" + custid + "','" + password + "')", mycon);

            mycon.Open();

            myadapter = new SqlDataAdapter(mycmd);
            myds = new DataSet();
            myadapter.Fill(myds, "set");

            dtcustomer11 = myds.Tables["set"];
        /*if(dtcustomer11.Rows.Count != 0)
        {
            return 1;
        }


    else
    {
        return 0;
    }*/

        return 1;

    }
}