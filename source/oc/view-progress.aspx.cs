using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _3rd_july;
using System.Data;
using System.Data.SqlClient;

namespace Crime_Management_System.oc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                name.Text = Session["adminrole"].ToString();
                //finf command to display type also
                string sql = "Select CD.CaseID, CD.Victim, CD.Age, CD.Sex, CT.OfficerID, OD.OfficerName from CaseDetailsTable CD, CaseTable CT, OfficerDetailsTable OD Where CT.Status = 'Running' AND CD.CaseID = CT.CaseID AND OD.OfficerID = CT.OfficerID";
                gvRunningCases.DataSource = DataAccessLayer.Select(sql);
                gvRunningCases.DataBind();

            }

            catch
            {
                Response.Redirect("~/oc/restricted.aspx");
            }
        }

        protected void btnSybmit_Click(object sender, EventArgs e)
        {
            string sql = "select Date, Expenditure from ExpensesTable Where [Date] between '" + tbFrom.Text + "' AND '" + tbTo.Text + "'";
            gvProgress.DataSource = DataAccessLayer.Select(sql);
            gvProgress.DataBind();
        }

        protected void btnGetTotalExpense_Click(object sender, EventArgs e)
        {
            string sql = "Select TotalExpense From CaseTable Where CaseID = @caseid";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.Add("@caseid", SqlDbType.VarChar, 10).Value = tbCaseID.Text;
            tbTotalExpense.Text = "Rs. " + DataAccessLayer.GetValue(cmd).ToString();
        }

        protected void ddlOfficerExpense_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Total Expense
            string sql = "Select SUM(E.Expenditure) From ExpensesTable E, CaseTable C Where E.CaseID = C.CaseID And C.OfficerID = '" + ddlOfficers.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(sql);
            tbExpenseOfficer.Text = "Rs. " + DataAccessLayer.GetValue(cmd).ToString();

            //Total No. of Appointed Cases
            sql = "Select COUNT(*) from CaseTable Where OfficerID = '" + ddlOfficers.SelectedValue + "'";
            cmd = new SqlCommand(sql);
            tbOfficerCases.Text = DataAccessLayer.GetValue(cmd).ToString();

            //Total cases solved
            sql = "Select COUNT(*) from CaseTable Where OfficerID = '" + ddlOfficers.SelectedValue + "' AND Status = 'Closed'";
            cmd = new SqlCommand(sql);
            tbOfficerSolved.Text = DataAccessLayer.GetValue(cmd).ToString();

            //Total running cases
            sql = "Select COUNT(*) from CaseTable Where OfficerID = '" + ddlOfficers.SelectedValue + "' AND Status = 'Running'";
            cmd = new SqlCommand(sql);
            tbOfficerCasesNow.Text = DataAccessLayer.GetValue(cmd).ToString();
        }

        protected void ddlCrimeTypeExpense_SelectedIndexChanged(object sender, EventArgs e)
        {
            //command for expense of each crime type
            string sql = "Select SUM(E.Expenditure) From ExpensesTable E, CaseTypeTable CT, CaseDetailsTable CD Where E.CaseID = CD.CaseID AND CT.CaseTypeID = '" + ddlCrimeTypeExpense.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.Add("@type", SqlDbType.VarChar, 10).Value = ddlCrimeTypeExpense.SelectedValue;
            tbCrimeTypeExpense.Text = "Rs. " + DataAccessLayer.GetValue(cmd).ToString();
        }
    }
}