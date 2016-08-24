using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crime_Management_System.headq
{
    public partial class headq_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (tbUsername.Text == "admin" && tbPassword.Text == "network")
            {
                Session["adminrole"] = "admin";
                Response.Redirect("~\\headq\\admin-home.aspx");
            }
            else
            {
                Response.Redirect("headq-login.aspx?UnsuccessfulAttempt=ServiceLogin=Failed&Return=login");
            }
        }
    }
}