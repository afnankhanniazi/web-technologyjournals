<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="FeedbackSystem.ViewFeedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Feedback</title>
    <style>
        .grid-container {
            width: 90%;
            margin: auto;
            padding-top: 30px;
        }

        .gridview-style {
            border-collapse: collapse;
            width: 100%;
        }

        .gridview-style th, .gridview-style td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .gridview-style th {
            background-color: #ff00dc;
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview-style"
                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
                OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="Student_Name" HeaderText="Student Name" ReadOnly="True" />
                    <asp:BoundField DataField="Course_Name" HeaderText="Course Name" />
                    <asp:BoundField DataField="FeedbackMessage" HeaderText="Feedback" ReadOnly="True" />
                    <asp:BoundField DataField="Comment" HeaderText="Comment" />
                    <asp:BoundField DataField="phone_number" HeaderText="Phone Number" ReadOnly="True" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
