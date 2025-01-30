<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Tour_Management.userlogin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
        }

        .container {
            text-align: center;
            background-color: black;
            width: 100%;
            font-size: 30px;
            color: white;
            padding: 150px 0;
            opacity: 0.8;
        }

        .page-header {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .form-horizontal {
            width: 40%;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .control-label {
            text-align: left;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 18px;
        }

        .login-button,
        .signup-button {
            background-color: #cc6600;
            color: black;
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            font-size: 20px;
        }
    </style>
    <script src="./script.js"></script>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <div class="page-header">
                <h1>User Login</h1>
            </div>
            <form id="form1" runat="server">
                <div class="form-horizontal">
                    <div class="form-group">
                        <div class="control-label col-sm-4">
                            <asp:Label ID="Label1" runat="server" Text="Email" />
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" required="true" ForeColor="Black" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="control-label col-sm-4">
                            <asp:Label ID="Label2" runat="server" Text="Password" />
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtPassword" type="password" required="true" runat="server" ForeColor="Black" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
    <div class="col-sm-6">
        <asp:Button BackColor="#cc6600" ID="Register" runat="server" Text="Login" ForeColor="Black" class="form-control login-button" OnClick="Btn_Submit" Height="38px" />
    </div>
    <div class="col-sm-6"> 
        <asp:Button BackColor="#cc6600" ID="Button1" runat="server" Text="Sign Up" ForeColor="Black" class="form-control signup-button" OnClick="Btn_reg" Height="38px" />
    </div>
</div>

                </div>
            </form>
        </div>
    </div>
</body>
</html>
