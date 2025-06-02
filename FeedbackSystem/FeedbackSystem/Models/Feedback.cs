using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FeedbackSystem.Models
{
    public class Feedback
    {
       public int Id { get; set; }
        public string Name { get; set; }
        public string CourseName { get; set; }
        public string Comments { get; set; }
        public string Phone { get; set; }
    }

}