using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for signindl
/// </summary>
public class signindl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    SqlCommand mycmd1;
    DataSet myds;
    string squery;
    DataTable d1 = new DataTable();

    public signindl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public int signin(string custid, string password, out DataTable dtcustomer1)
    {

        mycmd = new SqlCommand("select cust_id  from Customer where cust_id='" + custid  + "'", mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);


        myds = new DataSet();
        myadapter.Fill(myds, "sigin");

        dtcustomer1 = myds.Tables["sigin"];
        
       

        if (dtcustomer1.Rows.Count == 0)

        {
            
            return 1;

        }

        else

        {

           
            return 0;

        }
        
    }
}