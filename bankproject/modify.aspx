<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modify.aspx.cs" Inherits="modify" %>

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
  <a class="navbar-brand" href=" #">Community Bank</a>
    </nav>
    <div class="container">
    <form id="form1" runat="server">
    <div>
    
         <h1 class="mb-4">Enter details</h1>
       
        <div class="form-group "> <asp:TextBox id="TextBox1" runat="server" class="form-control" placeholder="Email"/></div>
        <div class="form-group ">   <asp:TextBox id="TextBox2" runat="server" class="form-control" placeholder="Phone Number"/></div>
        <asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-primary" OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid phone Number" ControlToValidate="TextBox2" ValidationExpression="^(0|\+91)?[789]\d{9}$"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid email" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         <br />
         <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </div>
        <div class="container text-center" style="padding:20px">
        <asp:Button ID="Button2" runat="server" Text="Back"  Class="btn btn-primary" OnClick="Button2_Click"/></div>
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
