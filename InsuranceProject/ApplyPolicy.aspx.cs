using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceProject
{
    public partial class ApplyPolicy : System.Web.UI.Page
    {
        protected void btnApply_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ApplyPolicy")
            {
                // Retrieve the policy ID and policy name from the CommandArgument.
                string[] args = e.CommandArgument.ToString().Split(';');
                int policyId = Convert.ToInt32(args[0]);
                string policyName = args[1];

                // Insert the applied policy into the "HistoryTable" with a default "Pending" status.
                InsertAppliedPolicy(policyId, policyName);

                // Redirect to the History page.
                Response.Redirect("History.aspx");
            }
        }

        private void InsertAppliedPolicy(int policyId, string policyName)
        {
            // Define your connection string. Replace "YourConnectionString" with your actual connection string.
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Define the SQL query to insert the applied policy into the "HistoryTable" with a default "Pending" status.
                string insertQuery = "INSERT INTO HistoryTable (policy_id, PolicyName, DateOfApply, Status) VALUES (@PolicyId, @PolicyName, GETDATE(), 'Pending')";

                using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                {
                    // Set parameters for the query.
                    cmd.Parameters.AddWithValue("@PolicyId", policyId);
                    cmd.Parameters.AddWithValue("@PolicyName", policyName);

                    // Execute the SQL command to insert the data.
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
