using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for balancedl
/// </summary>
public class balancedl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    public balancedl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public string balview(string custid)
    {
        string x;
        mycon.Open();
        mycmd = new SqlCommand("select bal from BankAccountDetails where cust_id='" + custid + "'", mycon);
        x = mycmd.ExecuteScalar().ToString();
        mycon.Close();
        return x;
    }
}