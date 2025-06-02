<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFeedback.aspx.cs" Inherits="FeedbackSystem.AddFeedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Feedback</title>
    <style>
        body {
            background-color: #1e1e1e;
            color: white;
            font-family: Arial;
            margin: 40px;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input, textarea {
            width: 300px;
            margin-bottom: 10px;
            padding: 5px;
        }

        #btnSubmit {
            background-color: #888;
            color: white;
            padding: 6px 12px;
            border: none;
        }

        .error {
            color: red;
            margin-top: 10px;
        }

        .success {
            color: lightgreen;
            margin-top: 10px;
        }

        .stats-link {
            margin-top: 20px;
            display: block;
            color: lightblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Add Feedback</h1>

        <label for="txtName">Student Name:</label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <label for="txtCourse">Course Name:</label>
        <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>

        <label for="txtMessage">Feedback Message:</label>
        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" Rows="4" Columns="40"></asp:TextBox>

        <label for="txtComment">Comment:</label>
        <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>

        <label for="txtPhone">Phone Number:</label>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>

        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" OnClick="btnSubmit_Click" />

        <br />
        <asp:Label ID="lblResult" runat="server" CssClass="error"></asp:Label>

        <a href="Stats.aspx" class="stats-link">View Feedback Stats</a>
    </form>
</body>
</html>
