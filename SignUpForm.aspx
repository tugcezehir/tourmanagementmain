<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="Tour_Management.SignUpForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration Form</title>
    <style>
        .container {
            text-align: center;
            background-color: #333;
            width: 100%;
            font-size: 30px;
            color: white;
            padding: 20px;
            opacity: 0.9;
        }

        .form-horizontal {
            margin: 0 auto;
            max-width: 500px;
        }

        .page-header {
            background-color: #444;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .control-label {
            text-align: center;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-control:focus {
            border-color: #cc6600;
        }

        .btn-register,
        .btn-reset {
            background-color: #cc6600;
            color: black;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
        }

        .btn-register:hover,
        .btn-reset:hover {
            background-color: #ff9900;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <br />
    <br />

    <form runat="server">
        <div class="container" runat="server">
            <div class="page-header">
                <h1>User Registration Form</h1>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label1" runat="server" Text="Email" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="email" TextMode="Email" runat="server" required="true" ForeColor="Black" class="form-control" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label2" runat="server" Text="First Name" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="fname" required="true" runat="server" ForeColor="Black" class="form-control" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label3" runat="server" Text="Last Name" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="lname" required="true" runat="server" ForeColor="Black" class="form-control" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label4" runat="server" Text="Gender" /></div>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="gender" runat="server" Width="361px" ForeColor="Black" class="form-control">
                            <asp:ListItem Text="Male"></asp:ListItem>
                            <asp:ListItem Text="Female"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label5" runat="server" Text="Enter Password" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="password1" type="password" required="true" runat="server" ForeColor="Black" class="form-control" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label6" runat="server" Text="Re-enter Password" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="password2" type="password" required="true" runat="server" ForeColor="Black" class="form-control" /></div>
                    <br />
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label7" runat="server" Text="Date of birth (dd-mm-yyyy)" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="dob" required="true" runat="server" TextMode="Date" ForeColor="Black" class="form-control" Width="365px" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label9" runat="server" Text="Street" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="street" required="true" runat="server" ForeColor="Black" class="form-control" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label10" runat="server" Text="City" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="city" required="true" runat="server" ForeColor="Black" class="form-control" /></div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label11" runat="server" Text="State" /></div>
                    <div class="col-sm-6"><asp:TextBox ID="state" required="true" runat="server" ForeColor="Black" class="form-control" /></div>
                </div>
               <div class="form-group">
    <div class="col-sm-6 col-sm-offset-4">
        <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" CssClass="btn-register" />
        <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="btn-reset" />
    </div>
</div>

            </div>
        </div>
    </form>
</body>
</html>
