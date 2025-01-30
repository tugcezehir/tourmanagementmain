<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Tour_Management.Order" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirm Tour</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        
        .container {
            text-align: center;
            background-color: #115150;
            width: 120%;
            padding: 44px;
            border-radius: 10px;
        }

        .form-group {
            margin: 20px 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-group .control-label {
            text-align: left;
            width: 40%;
            font-size: 22px;
            color: #333;
        }

        .form-group .form-control {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 2px solid #ccc;
            border-radius: 5px;
        }

        .btn-register {
            background-color: #22e652;
            color: #fff;
            padding: 15px 56px;
            border: none;
            border-radius: 5px;
            font-size: 26px;
        }

        .btn-reset {
            background-color: #d11414;
            color: #fff;
            padding: 15px 65px;
            border: none;
            border-radius: 5px;
            font-size: 26px;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container" runat="server">
            <div class="page-header">
                <h1 style="font-family: 'Arial', sans-serif; color: #fff;">Confirm Tour</h1>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label1" runat="server" Text="Your Name" ForeColor="white" Font-Size="22px" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="name" runat="server" required="true" ForeColor="#333" class="form-control" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label3" runat="server" Text="Your City" ForeColor="white" Font-Size="22px" /></div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="city" runat="server" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label5" runat="server" Text="Tour Name" ForeColor="white" Font-Size="22px" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="tour_name" required="true" runat="server" class="form-control" ForeColor="black" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label10" runat="server" Text="Mobile Number" ForeColor="white" Font-Size="22px" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="number" required="true" runat="server" class="form-control" ForeColor="black" TextMode="Number" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-2"><asp:Button BackColor="#22e652" ID="Book" runat="server" Text="Register" ForeColor="black" class="btn-register" OnClick="btn_click" /></div>
                    <div class="control-label col-sm-2"><asp:Button BackColor="#d11414" ID="Reset" type="reset" runat="server" Text="Reset" ForeColor="white" class="btn-reset" /></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
