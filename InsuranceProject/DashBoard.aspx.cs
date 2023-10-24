
        using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceProject
    {
        public partial class DashBoard : Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                // This method is called when the page is loaded.
            }

            //protected void RedirectLink_Click(object sender, EventArgs e)
            //{
            //    // Determine which link was clicked and perform the redirection accordingly.

            //    // Get the ID of the control that triggered the postback (the link button).
            //    string controlId = ((Control)sender).ClientID;

            //    // Check which link button was clicked and perform redirection.
            //    if (controlId == AvailablePolicyLink.ClientID)
            //    {
            //        // Redirect to ApplyPolicy.aspx when "Available Policy" is clicked.
            //        Response.Redirect("ApplyPolicy.aspx");
            //    }
            //    else if (controlId == AppliedPolicyLink.ClientID)
            //    {
            //        // Redirect to History.aspx when "Applied Policy" is clicked.
            //        Response.Redirect("History.aspx");
            //    }
            //    else if (controlId == PolicyCategoriesLink.ClientID)
            //    {
            //        // Redirect to CustomerPolicyCategories.aspx when "Policy Categories" is clicked.
            //        Response.Redirect("CustomerPolicyCategories.aspx");
            //    }
            //}
        }
    }



