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
    public partial class AdminAddPolicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load categories into the dropdown list
                LoadCategories();
            }
        }
      

        protected void Button1_Click(object sender, EventArgs e)
        {
            int SerialNo= int.Parse(ddlCategory.SelectedValue);
            string policyName = txtPolicyName.Text;
            decimal sumAssured = decimal.Parse(txtSumAssured.Text);
            decimal premium = decimal.Parse(txtPremium.Text);
            int tenure = int.Parse(txtTenure.Text);

            // Your database connection string
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ToString();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Insert query for policies
                string insertQuery = "INSERT INTO policies (SerialNo, policy_name, sum_assured, premium, tenure, creation_date) " +
                                     "VALUES (@CategoryId, @PolicyName, @SumAssured, @Premium, @Tenure, GETDATE())";

                using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                {
                    cmd.Parameters.AddWithValue("@CategoryId", SerialNo);
                    cmd.Parameters.AddWithValue("@PolicyName", policyName);
                    cmd.Parameters.AddWithValue("@SumAssured", sumAssured);
                    cmd.Parameters.AddWithValue("@Premium", premium);
                    cmd.Parameters.AddWithValue("@Tenure", tenure);

                    cmd.ExecuteNonQuery();
                }
            }

            // Redirect to a success page or display a success message
            Response.Redirect("AdminViewPolicy.aspx");
        }

        private void LoadCategories()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ToString();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Select all categories from the categories table
                string selectQuery = "SELECT SerialNo, category_name FROM categories";

                using (SqlCommand cmd = new SqlCommand(selectQuery, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        // Bind the category data to the dropdown list
                        ddlCategory.DataSource = dt;
                        ddlCategory.DataTextField = "category_name";
                        ddlCategory.DataValueField = "SerialNo";
                        ddlCategory.DataBind();
                    }
                }
            }
        }
    }

}
