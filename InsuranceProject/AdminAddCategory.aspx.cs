using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceProject
{
    public partial class AdminAddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void AddBtn_Click(object sender, EventArgs e)
        {
            string categoryName =TextBox2.Text;

            // Your database connection string
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Insert query with parameters to prevent SQL injection
                string insertQuery = "INSERT INTO categories (category_name) VALUES (@CategoryName)";

                using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                {
                    cmd.Parameters.AddWithValue("@CategoryName", categoryName);

                    try
                    {
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                           LblMessage.Text = "Category added successfully!";
                            TextBox2.Text = ""; // Clear the TextBox
                        }
                        else
                        {
                            LblMessage.Text = "Category not added. Please try again.";
                        }
                    }
                    catch (Exception ex)
                    {
                        LblMessage.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
        }
    }
}