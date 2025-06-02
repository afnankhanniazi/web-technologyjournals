using System;

namespace FeedbackSystem
{
    public partial class Stats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTotal.Text = Application["TotalSubmissions"] != null ? Application["TotalSubmissions"].ToString() : "0";
            lblLastStudent.Text = Session["LastStudent"] != null ? Session["LastStudent"].ToString() : "N/A";
        }
    }
}
