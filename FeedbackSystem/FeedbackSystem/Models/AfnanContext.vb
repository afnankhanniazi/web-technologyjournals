using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FeedbackSystem.Models
{
     Imports System.Data.Entity

    Public Class AfnanContext
            Inherits DbContext

            Public Sub New()
                MyBase.New("AfnanDB")
            End Sub

            Public Property Feedbacks As DbSet(Of Feedback)
        End Class

	}
}