using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceProject
{
    public partial class QuestionHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Connection string
                string connectionString = "Data Source=DESKTOP-FDHH6M8;Initial Catalog=InsuranceDb;Integrated Security=True";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // SQL query to retrieve data
                    string query = "SELECT * FROM questionhistory";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dt = new DataTable();
                            adapter.Fill(dt);

                            // Populate the data into the existing table format
                            for (int i = 0; i < dt.Rows.Count; i++)
                            {
                                TableRow row = new TableRow();
                                for (int j = 0; j < dt.Columns.Count; j++)
                                {
                                    TableCell cell = new TableCell();
                                    cell.Text = dt.Rows[i][j].ToString();
                                    row.Cells.Add(cell);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}