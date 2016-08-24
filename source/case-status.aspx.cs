using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using _3rd_july;

namespace Crime_Management_System.io
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "select count(*) from VictimDetailsTable where UserID=@user and Phno=@phno";
                SqlCommand cmd = new SqlCommand(sql);
                cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = tbUserId.Text;
                cmd.Parameters.Add("@phno", SqlDbType.BigInt).Value = Int64.Parse(tbPhn.Text);

                if (DataAccessLayer.AuthenticateUser(cmd))
                {
                    sql = "select D.OfficerName, B.Status, E.Branch, C.Date, C.Progress  from CaseTable B, InvestigationProgressTable C, OfficerDetailsTable D, PoliceStationDetails E Where B.UserID = '" + tbUserId.Text + "' AND C.caseID =  '" + tbCaseId.Text + "' AND B.CaseID = '" + tbCaseId.Text + "' AND B.OfficerID = D.OfficerID AND B.PSID = E.PSID";
                    //cmd = new SqlCommand(sql);
                    //cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = tbUserId.Text;
                    //cmd.Parameters.Add("@case", SqlDbType.VarChar).Value = tbCaseId.Text;


                    Gvstatus.DataSource = DataAccessLayer.Select(sql);
                    Gvstatus.DataBind();
                }

                //lblstatus.Text = "Check Status By Date !";
                //lblstatus.ForeColor = System.Drawing.Color.Green;
            }
            catch
            {
                //lblstatus.Text = "No data , Please Insert Correct Values";
                //lblstatus.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}