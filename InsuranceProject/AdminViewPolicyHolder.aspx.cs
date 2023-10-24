/*using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace InsuranceProject
{
    public partial clastem.Web.UI.Page
    {*//**//*
        public int Status { get; private set; }
s AdminViewPolicyHolder : Sys
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)


        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label statusLabel = row.FindControl("StatusLabel") as Label;
            DropDownList statusDropDown = row.FindControl("StatusDropDown") as DropDownList;

            // Get the values from the row
            int policyId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string newStatus = statusDropDown.SelectedValue;

            // Update the status in the GridView (no database update)
            statusLabel.Text = newStatus;

            // Cancel the GridView's edit mode
            GridView1.EditIndex = -1;

            e.Cancel = true; // Cancel the GridView's default update behavior

            // Perform your AJAX request to update the status in the database if needed
            // You can use JavaScript/jQuery/AJAX here to send the data to your server.
            // For a complete AJAX implementation, you would need to handle the AJAX request using JavaScript.

            // For simplicity, I'm showing a JavaScript alert here:
            string script = "alert('Updated: Policy ID = " + policyId + ", New Status = " + newStatus + "');";
            ScriptManager.RegisterStartupScript(Page, GetType(), "UpdateScript", script, true);
        }
        private bool UpdateStatusInDatabase(int policyId, string newStatus)
        {
            // Implement your database update logic here
            // Return true if the update is successful, or false if it fails

            // Example code (replace with your database logic):
            SqlConnection con = new SqlConnection("con");
             SqlCommand cmd = new SqlCommand("UPDATE YourTable SET Status = @NewStatus WHERE policy_id = @PolicyId", con);
            cmd.Parameters.AddWithValue("@NewStatus", newStatus);
            cmd.Parameters.AddWithValue("@PolicyId", policyId);

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            // return rowsAffected > 0;
            return true; // For demonstration purposes
        }
    }

}

*/