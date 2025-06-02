using System;
using System.Configuration;
using System.Data.SqlClient;

namespace FeedbackSystem
{
    public partial class AddFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Pre-fill Student Name from Session
                if (Session["LastStudent"] != null)
                {
                    txtName.Text = Session["LastStudent"].ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string student = txtName.Text.Trim();
            string course = txtCourse.Text.Trim();
            string message = txtMessage.Text.Trim();
            string comment = txtComment.Text.Trim();
            string phone = txtPhone.Text.Trim();

            if (string.IsNullOrEmpty(student) || string.IsNullOrEmpty(course))
            {
                lblResult.Text = "Student name and course are required.";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["FeedbackConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Feedback (Student_Name, Course_Name, FeedbackMessage, Comment, phone_number) " +
                               "VALUES (@Student_Name, @Course_Name, @FeedbackMessage, @Comment, @Phone)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Student_Name", student);
                cmd.Parameters.AddWithValue("@Course_Name", course);
                cmd.Parameters.AddWithValue("@FeedbackMessage", message);
                cmd.Parameters.AddWithValue("@Comment", comment);
                cmd.Parameters.AddWithValue("@Phone", phone);

                conn.Open();
            //    cmd.ExecuteNonQuery();
            }

            // Save student name to session
            Session["LastStudent"] = student;

            // Increment total submissions using application state
            if (Application["TotalSubmissions"] == null)
                Application["TotalSubmissions"] = 1;
            else
                Application["TotalSubmissions"] = (int)Application["TotalSubmissions"] + 1;

            lblResult.CssClass = "success";
            lblResult.Text = "Feedback submitted successfully!";
        }
    }
}
