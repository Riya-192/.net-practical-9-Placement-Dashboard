
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Practical_9
{
    public partial class StudentsPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager
            .ConnectionStrings["PlacementDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadStudents();
        }

        private void LoadStudents()
        {
            using (SqlConnection con = new SqlConnection(cs))
            using (SqlDataAdapter da = new SqlDataAdapter(
                @"SELECT StudentId, EnrollmentNo, StudentName,
                  Department, PassingYear, IsPlaced
                  FROM Students ORDER BY StudentId", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvStudents.DataSource = dt;
                gvStudents.DataBind();
            }
        }
    }
}
