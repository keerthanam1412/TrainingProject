using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for modifydl
/// </summary>
public class modifydl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    public modifydl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public void modify(string custid, string email,long phno, out DataTable dtmodify)
    {

        mycmd = new SqlCommand("update BankAccountDetails set ph_no='"+phno+"',emailid='"+email+"' where cust_id='"+ custid+"'", mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);


        myds = new DataSet();
        myadapter.Fill(myds, "modify");

        dtmodify = myds.Tables["modify"];

        /*if (dtmodify.Rows.Count != 0)

        {

            return 1;

        }

        else

        {

            return 0;
        }*/
    }
}