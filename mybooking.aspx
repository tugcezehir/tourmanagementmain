<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mybooking.aspx.cs" Inherits="Tour_Management.mybooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Current Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 5%;
            padding: 0;
        }

        h1 {
            text-align: center;
            background-color: #115150;
            color: white;
            padding: 20px;
            margin: 0;
        }

        #content {
            margin-top: 20px;
            text-align: center;
        }

        #GridView1 {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            border-spacing: 0;
        }

        #GridView1 th,
        #GridView1 td {
            padding: 8px;
            border: 1px solid #DEDFDE;
            text-align: left;
        }

        #GridView1 th {
            background-color: #6B696B;
            color: white;
        }

        #GridView1 tr:nth-child(even) {
            background-color: #F7F7DE;
        }

        #GridView1 tr:nth-child(odd) {
            background-color: #F7F7DE;
        }

        #GridView1 tr:hover {
            background-color: #115150;
            color: white;
        }

        #GridView1 a {
            text-decoration: none;
            color: #115150;
        }

        /* Style for the Delete button */
        #GridView1 .btn-delete {
            display: inline-block;
            padding: 6px 12px;
            background-color: #115150;
            border: 1px solid #d11414;
            color: white;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s, border-color 0.3s;
        }

        #GridView1 .btn-delete:hover {
            background-color: #d11414;
            color: white;
            border-color: #d11414;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Your Current Booking</h1>
    <div id="content">
        <form id="form1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                CellPadding="4" DataKeyNames="TOUR_ID" ForeColor="Black" GridLines="Both">
                <Columns>
                    <asp:BoundField DataField="TOUR_NAME" HeaderText="Tour Name" SortExpression="TOUR_NAME" />
                    <asp:BoundField DataField="TOUR_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                        SortExpression="TOUR_ID" />
                    <asp:CommandField ShowDeleteButton="True" DeleteText="Delete" ButtonType="Link" ControlStyle-CssClass="btn-delete" />
                </Columns>
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:dbconnection %>"
                SelectCommand="SELECT [TOUR_NAME], [TOUR_ID] FROM [booking]"
                DeleteCommand="DELETE FROM [booking] WHERE [TOUR_ID] = @TOUR_ID">
            </asp:SqlDataSource>
            <br />
        </form>
    </div>
</body>
</html>
