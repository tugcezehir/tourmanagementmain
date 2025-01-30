<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainProfilePage.aspx.cs" Inherits="Tour_Management.MainProfilePage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Profile Page</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #333;
            text-align: center; /* Center the navbar items horizontally */
            display: flex;
            justify-content: center; /* Center the navbar items horizontally */
            align-items: center; /* Center the navbar items vertically */
            border-radius: 10px;
        }

        li {
            border-right: 1px solid #bbb;
            display: inline; /* Display list items inline to prevent line breaks */
        }

        li:last-child {
            border-right: none;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover:not(.active) {
            background-color: #111;
        }

        .active {
            background-color: #04AA6D;
        }

        html, body {
            height: 100%;
            overflow: hidden; /* Prevent scrolling for both html and body */
        }

        .tour {
            background-image: url('../Pics/homepage.jpg');
            background-size: cover;
            text-align: center;
            color: white;
            height: 100vh; /* Set height to 100% viewport height */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
        }

        .tour a {
            font-size: 24px;
            background-color: #04AA6D;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 10px;
            transition: background-color 0.3s;
        }

        .tour a:hover {
            background-color: #04895b;
        }

        .tour p {
            text-align: center;
            color: white;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <ul class="nav navbar-nav navbar-left">
        <li><a href="usercrud.aspx"><span class="glyphicons glyphicons-home"></span>Profile</a></li>
        <li><a href="DisplayTours.aspx">Tours</a></li>
        <li><a href="Order.aspx">Book Tour</a></li>
        <li><a href="mybooking.aspx">Bookings info</a></li>
    </ul>

    <div class="welcome" style="text-align:center">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    <div class="tour">
        <h2>
            <a href="DisplayTours.aspx" class="btn btn-primary">Explore the Tours</a>
            <p class="label-info">
                Discover the best tour packages without any hassle.<br />
                Book and prepare for your next adventure.
            </p>
        </h2>
    </div>
</body>
</html>
