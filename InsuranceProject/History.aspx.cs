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
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the user is logged in and the session variable contains the UserId
                if (Session["UserId"] != null)
                {
                    int userId = Convert.ToInt32(Session["UserId"]);
                    // Now you have the UserId, and you can use it as needed
                    // For example, you can include it in your SQL query
                    string selectQuery = "SELECT * FROM [HistoryTable] WHERE UserId = @UserId";
                    SqlDataSource1.SelectCommand = selectQuery;
                    SqlDataSource1.SelectParameters.Add("UserId", userId.ToString());
                }
                else
                {
                    // Handle the case where the user is not logged in or the session variable is not set
                    Response.Redirect("Userlogin.aspx");
                }
            }
        }

    }
    }

