<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTours.aspx.cs" Inherits="Tour_Management.DisplayTours" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Explore Our Tours</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to an external CSS file for better organization -->
    <style>
        /* Add custom styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #ff6900;
            text-align: center;
        }
        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .grid-view th {
            background-color: #ff6900;
            color: white;
            padding: 10px;
            text-align: left;
        }
        .grid-view tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .grid-view td, .grid-view th {
            padding: 10px;
            border: 1px solid #DEDFDE;
        }
        .tour-image {
            max-width: 100px;
            height: auto;
        }
        .book-button {
            background-color: #ff6900;
            color: white;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 5px;
        }
        .book-button:hover {
            background-color: #ff0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Explore Our Tours</h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [TOUR_NAME], [pic], [PRICE], [DAYS], [LOCATIONS], [TOUR_ID] FROM [Tour]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TOUR_ID" DataSourceID="SqlDataSource1" CssClass="grid-view">
                <Columns>
                    <asp:BoundField DataField="TOUR_NAME" HeaderText="Tour Name" SortExpression="TOUR_NAME" />
                    <asp:BoundField DataField="DAYS" HeaderText="Days" SortExpression="DAYS" />
                    <asp:BoundField DataField="LOCATIONS" HeaderText="Locations" SortExpression="LOCATIONS" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <img src="Tour_pics/<%#Eval("pic") %>" class="tour-image" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl="Order.aspx" runat="server" CssClass="book-button">Book Now</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
