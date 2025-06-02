<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stats.aspx.cs" Inherits="FeedbackSystem.Stats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Feedback Statistics</h2>
<p><strong>Total Submissions:</strong> <asp:Label ID="lblTotal" runat="server" /></p>
<p><strong>Last Student Name:</strong> <asp:Label ID="lblLastStudent" runat="server" /></p>

        </div>
    </form>
</body>
</html>
