﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourCrud.aspx.cs" Inherits="Tour_Management.TourCrud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tour Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        #content {
            margin: 20px;
        }

        h1 {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        img {
            max-width: 150px;
            max-height: 150px;
            display: block;
            margin: 0 auto;
        }

        .gridview-container {
            margin: 20px 0;
        }

        .gridview-header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        .gridview-row {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content">
            <h1>Tour Management</h1>
            <div class="gridview-container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="TOUR_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle CssClass="gridview-row" />
                    <Columns>
                        <asp:BoundField DataField="TOUR_ID" HeaderText="Tour ID" InsertVisible="False" ReadOnly="True" SortExpression="TOUR_ID" />
                        <asp:BoundField DataField="TOUR_NAME" HeaderText="Tour Name" SortExpression="TOUR_NAME" />
                        <asp:BoundField DataField="PLACE" HeaderText="Place" SortExpression="PLACE" />
                        <asp:BoundField DataField="DAYS" HeaderText="Days" SortExpression="DAYS" />
                        <asp:BoundField DataField="PRICE" HeaderText="Price" SortExpression="PRICE" />
                        <asp:BoundField DataField="LOCATIONS" HeaderText="Locations" SortExpression="LOCATIONS" />
                        <asp:BoundField DataField="TOUR_INFO" HeaderText="Tour Info" SortExpression="TOUR_INFO" />
                        <asp:TemplateField HeaderText="Picture">
                            <ItemTemplate>
                                <img src='<%# "Tour_pics/" + Eval("pic") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle CssClass="gridview-header" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle CssClass="gridview-row" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                SelectCommand="SELECT * FROM [Tour]"
                UpdateCommand="UPDATE [Tour] Set [TOUR_NAME]=@TOUR_NAME,[PLACE]=@PLACE,[DAYS]=@DAYS,[PRICE]=@PRICE,[LOCATIONS]=@LOCATIONS,[TOUR_INFO]=@TOUR_INFO Where [TOUR_ID]=@TOUR_ID"
                DeleteCommand="DELETE FROM [Tour] WHERE [TOUR_ID]=@TOUR_ID">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
