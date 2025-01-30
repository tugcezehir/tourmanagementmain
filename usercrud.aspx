<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usercrud.aspx.cs" Inherits="Tour_Management.usercrud" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User CRUD</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            margin: 20px;
        }

        .grid-container {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .grid-header {
            background-color: #007BFF;
            color: white;
            padding: 15px;
            text-align: center; /* Center the text */
        }

        .grid-header h2 {
            margin: 0;
        }

        .grid-table {
            width: 100%;
            border-collapse: collapse;
        }

        .grid-table th {
            background-color: #007BFF;
            color: white;
            padding: 12px;
        }

        .grid-table td, .grid-table th {
            text-align: center;
            border: 1px solid #ccc;
            padding: 10px;
        }

        .grid-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .grid-table tr:hover {
            background-color: #e0e0e0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="grid-container">
            <div class="grid-header">
                <h2>User Information</h2>
            </div>
            <form id="form1" runat="server">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True"
    DataKeyNames="Email" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White"
    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
    GridLines="Vertical" CssClass="grid-table">
    <Columns>
        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:CommandField ShowDeleteButton="True" ButtonType="Button" DeleteText="Delete" />
    </Columns>
</asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>"
                    SelectCommand="SELECT * FROM UserInfo"
                    UpdateCommand="UPDATE [UserInfo] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [Password] = @Password, [City] = @City WHERE [Email] = @Email"
                    DeleteCommand="DELETE FROM [UserInfo] WHERE [Email] = @Email">
                </asp:SqlDataSource>
            </form>
        </div>
    </div>

</body>
</html>

