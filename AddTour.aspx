<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTour.aspx.cs" Inherits="Tour_Management.AddTour" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .page-header {
            text-align: center;
            font-size: 36px;
        }

        .form-horizontal {
            font-size: 24px;
            text-align: center;
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            padding: 20px;
        }
        #form1{
            margin: 0px;
            background-color: #bf9836;
            height: 100vh;
        }

        .form-group {
            margin: 10px 0;
        }

        .container {
            text-align: center;
            background-color: black;
            width: 100%;
            font-size: 30px;
            color: black;
            padding-bottom: 50px;
            opacity: 0.8;
        }

        .form-label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .button-container {
            text-align: center;
        }

        .button {
            background-color: #cc6600;
            color: black;
            padding: 20px 30px;
            margin: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        .button:hover {
            background-color: green;
        }

        .file-upload-label {
            font-weight: bold;
            display: block;
            font-size: 22px;
            margin-top: 10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-header">
            <h1>Add New Tour</h1>
        </div>
        <div class="container">
            <div class="form-horizontal col-md-7">
                <div class="form-group">
                    <label class="form-label" for="tour_name">Name of Tour</label>
                    <asp:TextBox id="tour_name" required="true" ForeColor="Black" class="form-control" runat="server" />
                </div>

                <div class="form-group">
                    <label class="form-label" for="place">Place</label>
                    <asp:TextBox id="place" runat="server" required="true" ForeColor="Black" class="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label" for="days">Days</label>
                    <asp:TextBox id="days" runat="server" required="true" ForeColor="Black" class="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label" for="locations">Locations</label>
                    <asp:TextBox id="locations" required="true" runat="server" ForeColor="Black" class="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label" for="price">Price</label>
                    <asp:TextBox id="price" runat="server" required="true" ForeColor="Black" class="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label" for="tour_info">Tour Info</label>
                    <asp:TextBox id="tour_info" required="true" runat="server" TextMode="MultiLine" ForeColor="Black" class="form-control" />
                </div>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" ControlToValidate="tour_info" ValidationExpression="^[\s\S]{0,250}$" runat="server" ErrorMessage="Characters less than 250"></asp:RegularExpressionValidator>
                
                    <div class="col-md-5">
                <span class="file-upload-label form-label">Image for Tour</span>
                <asp:FileUpload ID="FileUpload1" Style="background-image: url('../Pics/add.png');" runat="server" />
            </div>
                <div class="form-group">
                    <div class="button-container">
                        <asp:Button BackColor="#cc6600" ID="Register" runat="server" Text="Register" ForeColor="Black" OnClick="Register_Click" CssClass="button" />
                        <asp:Button BackColor="#cc6600" ID="Reset" runat="server" Text="Reset" ForeColor="Black" CssClass="button" />
                    </div>
                </div>
            </div>

        
        </div>
    </form>
</body>
</html>
