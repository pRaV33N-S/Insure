using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.EnterpriseServices;

namespace InsuranceProject
{
    public partial class AskQuestion : System.Web.UI.Page
    {

        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //  SqlConnection con = new SqlConnection("Data Source=DESKTOP-SJSDJAL\\MSSQL;Initial Catalog=InsuranceDb;Integrated Security=True");
        //con.Open(); 
        //SqlCommand cmd = new SqlCommand("Insert into questions((question_id, customer_id, question, AdminComment, AskedDate) VALUES (@question_id, @customer_id, @question, @admin_comment, @AskedDate)",con);
        //cmd.ExecuteNonQuery();     
        //con.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Submitted);", true);

        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic here
        }

        protected void InsertQuestionButton_Click(object sender, EventArgs e)
        {

            int customerID = 1;

            string questionText = TextBox7.Text.Trim();
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string query = "INSERT INTO questionhistory (customer_id, question, asked_date) VALUES (@Customer_Id, @Question, @AskedDate)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Customer_Id", customerID);
                    cmd.Parameters.AddWithValue("@Question", string.IsNullOrWhiteSpace(questionText) ? DBNull.Value : (object)questionText);
                    cmd.Parameters.AddWithValue("@AskedDate", DateTime.Now);

                    int nor = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (nor > 0)
                    {
                        Response.Write("<script>alert('Data inserted Successfully!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Insertion Failed');</script>");
                    }
                }
            }


            // Optionally, display a success message or redirect the
        }
    }

}