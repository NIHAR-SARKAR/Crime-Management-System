using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _3rd_july;
using System.Data.SqlClient;
using System.Data;

namespace Crime_Management_System.oc
{
    public partial class oc_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select count(*) from policestation where PSID=@psid AND Password=@pass";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.Add("@psid", SqlDbType.VarChar).Value = tbUsername.Text;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = tbPassword.Text;


            if (DataAccessLayer.AuthenticateUser(cmd))
            {
                Session["ocid"] = tbUsername.Text;
                Session["adminrole"] = "Mr. OC";
                Response.Redirect("~\\oc\\case-assign.aspx");
            }
            else
            {
                Response.Redirect("oc-login.aspx?UnsuccessfulAttempt=ServiceLogin=Failed&Return=login");
            }
        }
    }
}