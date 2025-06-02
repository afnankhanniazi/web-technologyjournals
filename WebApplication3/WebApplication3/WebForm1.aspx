<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFeedback.aspx.cs" Inherits="exam.AddFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Submit Feedback</h2>
<asp:TextBox ID="txtStudentName" runat="server" placeholder="Student Name" />First Name<br />
<asp:TextBox ID="txtCourseName" runat="server" placeholder="Course Name" />course nam<br />
<asp:TextBox ID="txtComments" runat="server" placeholder="Comments" />comment<br />
<asp:TextBox ID="txtPhone" runat="server" placeholder="Phone (11 digits)" MaxLength="11" />phone number<br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br />

        </div>
    </form>
</body>
</html>