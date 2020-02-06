using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



/// <summary>
/// Summary description for customerdl
/// </summary>
public class customerdl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;

    public customerdl()
    {
        //
        // TODO: Add constructor logic here
        //

        
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public int login(string custid, string password, out DataTable dtcustomer)
    {

        mycmd = new SqlCommand("select cust_id,cust_password from Customer where cust_id='" + custid + "' and cust_password='" + password + "'", mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);

        
        myds = new DataSet();
        myadapter.Fill(myds, "Customer");

        dtcustomer = myds.Tables["Customer"];

        if (dtcustomer.Rows.Count != 0)

        {

            return 1;

        }

        else

        {

            return 0;
        }
    }
}
