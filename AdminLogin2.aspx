<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin2.aspx.cs" Inherits="Tour_Management.AdminLogin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #d16c04;
            color: #fff;
            text-align: center;
            font-size: 30px;
            opacity: 0.8;
            padding: 150px 0;
        }
        
        h1 {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: 42px;
            color: black;
        }

        #name1, #password1 {
            color: black;
            font-size: 24px;
            display: block;
            margin-top: 25px;
            font-weight: bold;
        }

        #name, #password {
            width: 20%;
            padding: 10px;
            font-size: 18px;
            border: 2px solid #ccc;
            border-radius: 5px;
            margin-top: 15px;
            font-weight: bold;
        }

        #Button1 {
            background-color: #fff2cc;
            color: #000;
            padding: 15px 56px;
            border: none;
            border-radius: 5px;
            font-size: 26px;
            cursor: pointer;
            margin-top: 20px;
        }

        #Button1:hover {
            background-color: #5ace5d;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
            <h1>Admin Login</h1><br />
            <asp:Label ID="name1" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            <asp:Label ID="password1" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Login" />
        </div>
    </form>
</body>
</html>
