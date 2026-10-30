
using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Practical_9
{
    public partial class PlacementDashboard : System.Web.UI.Page
    {
        string cs = ConfigurationManager
            .ConnectionStrings["PlacementDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadTotals();
        }

        private void LoadTotals()
        {
            string query = @"
                SELECT COUNT(*) AS TotalStudents,
                SUM(CASE WHEN IsPlaced = 1 THEN 1 ELSE 0 END) AS Placed,
                SUM(CASE WHEN IsPlaced = 0 THEN 1 ELSE 0 END) AS NotPlaced
                FROM Students";

            using (SqlConnection con = new SqlConnection(cs))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                con.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        lblTotal.Text = dr["TotalStudents"].ToString();
                        lblPlaced.Text = dr["Placed"].ToString();
                        lblNotPlaced.Text = dr["NotPlaced"].ToString();
                    }
                }
            }
        }
    }
}
