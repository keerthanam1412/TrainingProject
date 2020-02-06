<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managerhome.aspx.cs" Inherits="managerhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  
        <a class="navbar-brand" href=" home.aspx">Community Bank</a>
       
        <asp:Label ID="Label1" runat="server" style="color:antiquewhite"></asp:Label>
    </nav>

     <div class="container" style="padding-bottom:10px">
    <form id="form1" runat="server">
    
     <br />
        <br />
       
    <div class="container" style="padding-top:50px;">

    <div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Add new account</h5>
        <p class="card-text">Here manager can add the details of new accounts created.</p>
          <asp:Button ID="Button4" runat="server" Text="add customer" Class="btn btn-primary" OnClick="Button4_Click" />
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Accounts</h5>
        <p class="card-text">Get the details of the Accounts in your branch</p>
          <asp:Button ID="Button1" runat="server" Text="Check" Class="btn btn-primary" OnClick="Button1_Click" />
          <asp:Label ID="Label2" runat="server" ></asp:Label><br />
  
      </div>
    </div>
  </div>
        
</div>
    </div>
        <div class="container text-center" style="padding-top:20px" >
        <asp:Button ID="Button2" runat="server" Text="Log out" Class="btn btn-primary" OnClick="Button2_Click"  /></div>
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
