using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using _3rd_july;

namespace Crime_Management_System.oc
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                name.Text = Session["adminrole"].ToString();
                string sql = "SELECT A.CaseID, A.OfficerID, A.UserID, A.Status, B.Date, B.Time, B.Place, C.ContactNo FROM dbo.CaseTable A, dbo.CaseDetailsTable B, dbo.policestation C Where A.CaseID = B.CaseID AND C.PSID = '" + Session["ocid"] + "'";

                GridView1.DataSource = DataAccessLayer.Select(sql);
                GridView1.DataBind();
            }
            catch
            {
                Response.Redirect("~/oc/restricted.aspx");
            }
        }

        protected void btnAssignOfficer_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE CaseTable SET OfficerID = @officerID, Status = 'Running' WHERE CaseID = @caseID");
            cmd.Parameters.Add("officerID", SqlDbType.VarChar, 10).Value = ddlAssignOfficer.SelectedValue;
            cmd.Parameters.Add("caseID", SqlDbType.VarChar, 10).Value = tbCaseID.Text;
            bool a = DataAccessLayer.Update(cmd);
            if (a)
            {
                GridView1.DataSource = DataAccessLayer.Select("SELECT A.CaseID, A.OfficerID, A.UserID, A.Status, B.Date, B.Time, B.Place, C.ContactNo FROM dbo.CaseTable A, dbo.CaseDetailsTable B, dbo.policestation C Where A.CaseID = B.CaseID AND C.PSID = '" + Session["ocid"] + "'");
                GridView1.DataBind();
            }

        }
    }
}