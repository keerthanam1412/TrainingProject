using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for transactiondl
/// </summary>
public class transactiondl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string eno;
    public transactiondl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public int validate(string accno, string ifsc, out DataTable transdl)
    {
        eno = "select Account_No,IFSC from BankAccountDetails where Account_no='" + accno + "'  and IFSC='" + ifsc +"'" ;
        mycmd = new SqlCommand(eno, mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);
        myds = new DataSet();
        myadapter.Fill(myds, "transaction");

        transdl = myds.Tables["transaction"];
        
        
        if (transdl.Rows.Count == 1)          
        {
            
                mycon.Close();
                return 1;
           
        }
        else
        {
            return 0;
        }

    }
    public DataTable sendervalidate(string cusid)
    {
        eno = "select Account_No,IFSC,bal from BankAccountDetails where cust_id='" + cusid +  "'";
        mycmd = new SqlCommand(eno, mycon);
        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);
        myds = new DataSet();
        DataTable transdl = new DataTable() ;
        myadapter.Fill(myds, "sendtrans");
        transdl = myds.Tables["sendtrans"];
        mycon.Close();
        return transdl;
       


    }
    public void tranins(long accno, string rec_acc, string ifsc, string rec_ifsc, float amt)
    {

        mycmd = new SqlCommand("insert into Transactions (Account_no,ToAccount_no,IFSC,Recv_IFSC,time_trans,debit,credit,loan,amount) values('" + accno + "','" + rec_acc + "','" + ifsc + "','" + rec_ifsc + "','" + DateTime.Now + "','" + 1 + "','" + 0 + "','" + 0 + "','" + amt + "')", mycon);
        mycmd.Connection.Open();
        mycmd.ExecuteNonQuery();
        mycmd.Connection.Close();



    }

    public void tranins1(string accno, long rec_acc, string ifsc, string rec_ifsc, float amt)
    {

        mycmd = new SqlCommand("insert into Transactions (Account_no,ToAccount_no,IFSC,Recv_IFSC,time_trans,debit,credit,loan,amount) values('" + accno + "','" + rec_acc + "','" + ifsc + "','" + rec_ifsc + "','" + DateTime.Now + "','" + 0 + "','" + 1 + "','" + 0 + "','" + amt + "')", mycon);
        mycmd.Connection.Open();
        mycmd.ExecuteNonQuery();
        mycmd.Connection.Close();


    }
    public void updatemin(long accno, string ifsc, float amt)
    {
        mycmd = new SqlCommand("update BankAccountDetails set bal=bal-'" + amt + "'where Account_no='" + accno + "' and ifsc='" + ifsc + "'", mycon);
        mycmd.Connection.Open();
        mycmd.ExecuteNonQuery();
        mycmd.Connection.Close();
    }
    public void updateplus(string rec_accno, string rec_ifsc, float amt)
    {
        mycmd = new SqlCommand("update BankAccountDetails set bal=bal+'" + amt + "'where Account_no='" + rec_accno + "' and ifsc='" + rec_ifsc + "'", mycon);
        mycmd.Connection.Open();
        mycmd.ExecuteNonQuery();
        mycmd.Connection.Close();
    }


}