<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerhome.aspx.cs" Inherits="customerhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>-->


    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
     
</head>
<body>


    
    <!--<nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.aspx">Community Bank</a>
    </div>
    
  </div>
</nav>-->

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href=" home.aspx">Community Bank</a>

  <!-- Links -->
 
        <asp:Label ID="Label1" runat="server"  style="color:antiquewhite"></asp:Label>
 
</nav>
    <div class="container" style="padding-bottom:10px">
        
    <form id="form1" runat="server">
        <br />
        <br />
       
    <div class="container" style="padding-top:50px;">

    <div class="row">
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Make Payements</h5>
        <p class="card-text">Account holder can make Transactions to other accounts within the bank.</p>
        <a href="transaction.aspx" class="btn btn-primary">Transfers</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> View Balance</h5>
        <p class="card-text">Account holder can view his/her balance here.</p>
          <asp:Button ID="Button1" runat="server" Text="view balance" Class="btn btn-primary" OnClick="Button1_Click" />
          <asp:Label ID="Label2" runat="server" ></asp:Label><br />
  
      </div>
    </div>
  </div>
        <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Modify Details</h5>
        <p class="card-text">Account holder can modify his Email and Phone number here.</p>
          <asp:Button ID="Button3" runat="server" Text="Modify" Class="btn btn-primary" OnClick="Button3_Click" />
       
      </div>
    </div>
  </div>
</div>
    </div>
        <div class="container text-center" style="padding-top:20px" >
        <asp:Button ID="Button2" runat="server" Text="Log out" Class="btn btn-primary" OnClick="Button2_Click" /></div>
    </form>
        </div>

    <footer class="page-footer font-small" style="background-color:#222;position:absolute; bottom:0px;width:100%;">

          <!-- Copyright -->
          <div class="footer-copyright text-center py-3" style="color:#9d9d9d">© 2020 Copyright:
             CommunityBank.com
          </div>
          <!-- Copyright -->

        </footer>
</body>
</html>
