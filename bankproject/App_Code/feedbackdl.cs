using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for feedbackdl
/// </summary>
public class feedbackdl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string rating;
    public feedbackdl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public void insertfeedback(string ra1, string ra2, string ra3, out DataTable d)
    {
        rating = ra1 + ", " + ra2 + " ," + ra3;
        mycmd = new SqlCommand("insert into newFeedback (Ratings)values('" + rating  + "')", mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);

        myds = new DataSet();
        myadapter.Fill(myds, "feedback");

        d = myds.Tables["feedback"];


    }
}