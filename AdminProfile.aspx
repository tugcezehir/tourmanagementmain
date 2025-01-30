<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="Tour_Management.AdminProfile" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
            margin: 0;
            padding: 0;
        }
        ul.navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #333;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
        }
        ul.navbar li {
            border-right: 1px solid #bbb;
            display: inline;
        }
        ul.navbar li:last-child {
            border-right: none;
        }
        ul.navbar a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        ul.navbar a:hover:not(.active) {
            background-color: #111;
        }
        .active {
            background-color: #04AA6D;
        }
        .page-header {
            background-image: url('data:image/jpeg;base64,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');
            background-size: cover;
            text-align: center;
            color: black;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            
        }
        .page-header h1 {
            font-size: 100px;
            margin-bottom: 20px;
        }
        .page-header p {
            text-align: center;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <ul class="navbar">
        <li><a href="AdminProfile.aspx">Profile</a></li>
        <li><a href="AddTour.aspx">Add Tours</a></li>
        <li><a href="TourCrud.aspx">Manage Tours</a></li>
        <li><a href="allbooking.aspx">Current Booking</a></li>
        <li style="float: right;"><a href="AdminLogin2.aspx">Logout</a></li>
    </ul>
    <div class="page-header">
        <h1>HELLO MR ADMIN</h1>
    </div>
</body>
</html>
