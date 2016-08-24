using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3rd_july
{
    public partial class registration_succesfull : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lbName.Text = Session["uname"].ToString();
                lbDOB.Text = Session["udob"].ToString();
                lbId.Text = Session["uid"].ToString();
                lbPhone.Text = Session["uphone"].ToString();
                lbPin.Text = Session["upin"].ToString();
                lbEmail.Text = Session["umail"].ToString();
                userimg.ImageUrl = Session["uimg"].ToString();
                Session.Clear();
            }
            catch
            {
                Response.Redirect("~/restricted.aspx");
            }
        }
    }
}