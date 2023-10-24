//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data.SqlClient;
//using System.Data;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace InsuranceProject
//{
//    public partial class Userlogin : System.Web.UI.Page
//    {
//        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }
//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            try
//            {
//                SqlConnection con = new SqlConnection(conStr);
//                if (con.State == ConnectionState.Closed)
//                {
//                    con.Open();
//                }

//                SqlCommand cmd = new SqlCommand("SELECT * FROM UserRegistration where UserId ='" + UserId.Text.Trim() + "' AND Password = '" + Password.Text.Trim() + "' ", con);
//                SqlDataReader dr = cmd.ExecuteReader();

//                if (dr.HasRows)
//                {
//                    while (dr.Read())
//                    {
//                        Response.Write("<script>alert('Login Successful');</script>");
//                        Session["UserName"] = dr.GetValue(0).ToString();
//                        Session["UserId"] = dr.GetValue(5).ToString();
//                        Session["UserLoginId"] = dr.GetValue(5).ToString();

//                        Session["role"] = "user";

//                    }
//                    Response.Redirect("DashBoard.aspx");
//                }
//                else
//                {
//                    Response.Write("<script>alert('Invalid User')</script>");
//                }

//            }
//            catch (Exception ex)
//            {
//                Response.Write("<script>alert('" + ex.Message + "')</script>");
//            }
//        }
//    }
//}

//using System;
//using System.Configuration;
//using System.Data.SqlClient;
//using System.Web.UI;

//namespace InsuranceProject
//{
//    public partial class Userlogin : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

//            string userId = UserId.Text.Trim();
//            string password = Password.Text.Trim();

//            using (SqlConnection con = new SqlConnection(conStr))
//            {
//                con.Open();

//                string query = "SELECT * FROM UserLogin WHERE UserId = @UserId AND Password = @Password";
//                SqlCommand cmd = new SqlCommand(query, con);
//                cmd.Parameters.AddWithValue("@UserId", userId);
//                cmd.Parameters.AddWithValue("@Password", password);

//                SqlDataReader dr = cmd.ExecuteReader();

//                if (dr.HasRows)
//                {
//                    while (dr.Read())
//                    {
//                        Session["UserId"] = userId; // Store the user's ID in the session
//                        Session["UserName"] = dr["UserName"].ToString();
//                    }
//                    dr.Close();
//                    Response.Redirect("Dashboard.aspx"); // Redirect to the dashboard page after successful login
//                }
//                else
//                {
//                    Response.Write("<script>alert('Invalid User')</script>");
//                }
//            }
//        }
//    }
//}


using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace InsuranceProject
{
    public partial class Userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            string userName = UserName.Text.Trim();
            string password = Password.Text.Trim();

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                string query = "SELECT * FROM UserLogin WHERE UserName = @UserName AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["UserName"] = dr["UserName"].ToString();
                    }
                    dr.Close();

                    // Now, insert data into the HistoryTable
                    string insertQuery = "INSERT INTO HistoryTable (policy_id, UserId, PolicyName, DateOfApply, Status, UserName) " +
                        "VALUES (@policy_id, @UserId, @PolicyName, @DateOfApply, @Status, @UserName)";

                    SqlCommand insertCmd = new SqlCommand(insertQuery, con);
                    insertCmd.Parameters.AddWithValue("@policy_id", 0); // Provide the appropriate policy_id
                    insertCmd.Parameters.AddWithValue("@UserId", userId);
                    insertCmd.Parameters.AddWithValue("@PolicyName", "PolicyNameValue"); // Provide the appropriate PolicyName
                    insertCmd.Parameters.AddWithValue("@DateOfApply", DateTime.Now);
                    insertCmd.Parameters.AddWithValue("@Status", "Pending");
                    insertCmd.Parameters.AddWithValue("@UserName", Session["UserName"].ToString());

                    insertCmd.ExecuteNonQuery();

                    Response.Redirect("Dashboard.aspx"); // Redirect to the dashboard page after successful login
                }
                else
                {
                    Response.Write("<script>alert('Invalid User')</script>");
                }
            }
        }
    }
}

