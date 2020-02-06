using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for addcustomerdl
/// </summary>
public class addcustomerdl
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    public addcustomerdl()
    {
        mycon = new SqlConnection("server = WSLKCMP2FTR1-01\\SQLEXPRESS; user id = sa;password = password@1;database=BankDatabase ");
    }
    public void mfetchifsc(string manid, out DataTable dtmanager)
    {

        mycmd = new SqlCommand("select ifsc from BankManager where BranchManagerID ='" + manid + "'", mycon);

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);

        DataTable dt = new DataTable();
        myds = new DataSet();
        myadapter.Fill(myds, "manager");

        dtmanager = myds.Tables["manager"];
        mycon.Close();
        


    }
    public void insertdetails(string cust_id, string cust_name, string cust_Temppassword,string Account_No, string IFSC, string bal, string open_date, string atm_card_no, string cheque_book_no, string pan_no, string aadhar_no, string age, string DOB, string address, string ph_no, string emailid , out DataTable d)
    {
        mycmd = new SqlCommand("insert into BankAccountDetails (cust_id,cust_name,cust_Temppassword,Account_No,IFSC,bal,open_date,atm_card_no,cheque_book_no,pan_no,aadhar_no,age,DOB,address,ph_no,emailid)values('"+cust_id+"','" +cust_name+"','"+ cust_Temppassword + "','" +Account_No+"','"+ IFSC + "','" + bal + "','" + open_date + "','" + atm_card_no + "','" + cheque_book_no + "','" + pan_no + "','" + aadhar_no + "','" + age + "','" + DOB + "','" + address + "','" + ph_no + "','" + emailid+"')",mycon) ;

        mycon.Open();

        myadapter = new SqlDataAdapter(mycmd);

        myds = new DataSet();
        myadapter.Fill(myds, "managerfetch");

        d = myds.Tables["managerfetch"];

        
    }

}