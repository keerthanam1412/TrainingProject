<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setpassword.aspx.cs" Inherits="setpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sigin</title>
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
   <!-- <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.aspx">Community Bank</a>
    </div>
    
  </div>
</nav>-->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href=" home.aspx">Community Bank</a>
</nav>
    <div class="row">
    <div class="col-sm-6" style="background-color:white;text-align:center; padding-top: 15px; height: 53px;">
      <img src="img4.jpg"  alt="Cinque Terre" style="width:100%;height:500px">
    </div>
     <div class="mx-auto col-md-3 col-4 bg-white p-5" >

          <h1 class="mb-4">Sign in</h1>
          <form id="form2" runat="server">
              
            <div class="form-group"> <asp:TextBox id="TextBox1" runat="server" class="form-control" placeholder="Enter Customer_id"/> </div>
            <div class="form-group"> <asp:TextBox id="TextBox2" runat="server" class="form-control" placeholder="Password" TextMode="Password" /> </div>
               <small class="form-text text-muted text-right">
               
              </small>  <asp:Button id="Button1" runat="server" Text="Next" class="btn btn-primary" OnClick="Button1_Click" />
              
              <br />
              <br />
              <asp:Label id="lblmsg" runat="server"></asp:Label>
              
          </form>
                    </div>
                
           </div>
  
    <footer class="page-footer font-small" style="background-color:#222;position:absolute; bottom:0px;width:100%;">

          <!-- Copyright -->
          <div class="footer-copyright text-center py-3" style="color:#9d9d9d">© 2020 Copyright:
             Community Bank.com
          </div>
          <!-- Copyright -->

        </footer>
       
  
    
</body>
</html>
