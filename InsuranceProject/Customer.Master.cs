using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the user is logged in and the session variable contains the user's name
                if (Session["UserName"] != null)
                {
                    string userName = Session["UserName"].ToString();
                    // Now, you have the customer's name, and you can use it as needed
                    // For example, you can display it on the page
                    lblWelcome.Text = "Welcome, " + userName;
                }
                else
                {
                    // If the user is not logged in, you can redirect them to the login page
                    Response.Redirect("Userlogin.aspx");
                }

            }
        }
      

        protected void logout_Click_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Userlogin.aspx");
        }
    }
}
 