<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

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
    <style>
        
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="home.aspx">Community Bank</a>
    </nav>
    <div class="container text-center">
        <h5 style="color:#f18233">Give your feedback ranging between 1-10.(1 is least and 10 is greatest)</h5><br />
    </div>
    <div class="form1" >
    <div class="container-fluid">
    <form id="form1" runat="server">
    <div>

	<div class="row">
    <div class="col-md-4">
		<div class="form_main">
              
            <div class="form">
                <asp:Label ID="Label1" runat="server" Text="How would  you rate your UI experience?"></asp:Label>
                    <br />
                
                <div class="form-group"> <asp:TextBox id="TextBox3" runat="server" class="form-control"></asp:TextBox></div>
        <asp:Label ID="Label2" runat="server" Text="How easy was it to find required information?"></asp:Label>
                <div class="form-group"> <asp:TextBox id="TextBox4" runat="server" class="form-control" ></asp:TextBox></div>
        <asp:Label ID="Label3" runat="server" Text="How was your overall experience?"></asp:Label>
                <div class="form-group"><asp:TextBox id="TextBox5" runat="server" class="form-control"></asp:TextBox> </div>
                
            </div>
        </div>
    </div>
	</div>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn btn-primary" OnClick="Button1_Click" />
        <asp:Label ID="Label4" runat="server"></asp:Label>
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
