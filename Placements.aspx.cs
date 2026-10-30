
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Practical_9
{
    public partial class PlacementsPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager
            .ConnectionStrings["PlacementDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPlacements();
            }
        }

        private void LoadPlacements()
        {
            string query = @"
                SELECT
                    p.PlacementId,
                    s.StudentId,
                    s.EnrollmentNo,
                    s.StudentName,
                    s.Department,
                    s.PassingYear,
                    p.CompanyName,
                    p.JobRole,
                    p.PackageLPA
                FROM Placements p
                INNER JOIN Students s
                    ON p.StudentId = s.StudentId
                ORDER BY p.PlacementId";

            using (SqlConnection con = new SqlConnection(cs))
            using (SqlDataAdapter da =
                new SqlDataAdapter(query, con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvPlacements.DataSource = dt;
                gvPlacements.DataBind();
            }
        }
    }
}
    