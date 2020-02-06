<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transaction.aspx.cs" Inherits="transaction" %>

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
  <!-- Brand -->
  <a class="navbar-brand" href="#">Community Bank</a>
        <asp:Label ID="Label1" runat="server" style="color:antiquewhite" ></asp:Label>
</nav>
       <div class="container">
    <form id="form1" runat="server">
 
    <h1 class="mb-4">Enter Transaction details</h1>
          
        <asp:Label ID="Label4" runat="server" Text="Account NO:"></asp:Label> <asp:Label ID="Label2" runat="server" ></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Text="IFSC:"></asp:Label><asp:Label ID="Label3" runat="server" ></asp:Label>
            
               <div class="form-group "> <asp:TextBox id="TextBox3" runat="server" class="form-control" placeholder="Recipient's account number"/></div>
                <div class="form-group ">   <asp:TextBox id="TextBox4" runat="server" class="form-control" placeholder="Recipient's IFSC"/></div>
                <div class="form-group "><asp:TextBox ID="TextBox5" runat="server" Class="form-control" placeholder=" Transaction Amount"></asp:TextBox></div>
        
               <small class="form-text text-muted text-right">
               
              </small>  <asp:Button id="Button1" runat="server" Text="Send" class="btn btn-primary" OnClick="Button1_Click"/>
      <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Tranasction amount should be greater than 1" ControlToValidate="TextBox5" MaximumValue="100000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
              <br />
              <br />
              <asp:Label id="msglbl" runat="server"></asp:Label>
        
        <br />
        <div class="container text-center">
        <asp:Button ID="Button2" runat="server" Text="Back" Class="btn btn-primary" OnClick="Button2_Click" /></div>
    </form>
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
