using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crime_Management_System
{
    public partial class case_accepted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                userId.Text = Session["user"].ToString();
                caseId.Text = Session["case"].ToString();
            }
            catch
            {
                Response.Redirect(@"~/restricted.aspx");
            }
        }
    }
}