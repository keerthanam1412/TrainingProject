<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addcustomer.aspx.cs" Inherits="addcustomer" %>

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

 
        <asp:Label ID="Label2" runat="server" ></asp:Label>
        </nav>
    <div class="container">
    <form id="form1" runat="server">
         <h1 class="mb-4">Enter Transaction details</h1>
        <div class="form-group"> <asp:TextBox id="TextBox1" runat="server" class="form-control" placeholder="Customer ID" /></div>
        <div class="form-group"> <asp:TextBox id="TextBox2" runat="server" class="form-control" placeholder="Name" ></asp:TextBox></div>
        <div class="form-group"> <asp:TextBox id="TextBox3" runat="server" class="form-control" placeholder="Temppassword" ></asp:TextBox></div>
        <div class="form-group"><asp:TextBox id="TextBox4" runat="server" class="form-control" placeholder="Account Number" ></asp:TextBox> </div>
       
        <div class="form-group"> <asp:TextBox id="TextBox6" runat="server" class="form-control" placeholder="Balance"></asp:TextBox></div>
        <div class="form-group"> <asp:TextBox id="TextBox7" runat="server" class="form-control" placeholder="Open date"></asp:TextBox></div>
        <div class="form-group"> <asp:TextBox id="TextBox8" runat="server" class="form-control" placeholder="Atm Card No"></asp:TextBox></div>
        <div class="form-group"> <asp:TextBox ID="TextBox9" runat="server"  class="form-control" placeholder="Cheque Book No"></asp:TextBox> </div>
        <div class="form-group"> <asp:TextBox ID="TextBox10" runat="server"  class="form-control" placeholder="Pan no"></asp:TextBox> </div>
        <div class="form-group">  <asp:TextBox ID="TextBox11" runat="server" class="form-control" placeholder="Adhar Number" ></asp:TextBox></div>
        <div class="form-group">  <asp:TextBox ID="TextBox12" runat="server" class="form-control" placeholder="Age"></asp:TextBox></div>
        <div class="form-group">  <asp:TextBox ID="TextBox13" runat="server" class="form-control" placeholder="DOB"></asp:TextBox></div>
        <div class="form-group"> <asp:TextBox ID="TextBox14" runat="server" class="form-control" placeholder="Address"></asp:TextBox></div>
        <div class="form-group"> <asp:TextBox ID="TextBox15" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox></div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid phone number" ControlToValidate="TextBox15"  ValidationExpression="^(0|\+91)?[789]\d{9}$"></asp:RegularExpressionValidator>
        <div class="form-group"><asp:TextBox ID="TextBox16" runat="server" class="form-control" placeholder="Email id"></asp:TextBox> </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid email id" ControlToValidate="TextBox16"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox12"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox13"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox14"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox15"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox16"></asp:RequiredFieldValidator>
        <div class="container text-center"> <asp:Button ID="Button1" runat="server" Text="Add Customer" Class="btn btn-primary" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
         </div>
    
    </form>
        </div>

        
</body>
</html>
