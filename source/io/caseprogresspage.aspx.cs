using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _3rd_july;
using System.Data;
using System.Data.SqlClient;

namespace Crime_Management_Project.IO
{
    public partial class caseprogresspage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM CaseTable JOIN CaseDetailsTable ON CaseTable.CaseID = CaseDetailsTable.CaseID AND CaseTable.OfficerID = 'IO102'"; //take officerid from officer login session
            gvOfficerAssignedCases.DataSource = DataAccessLayer.Select(sql);
            gvOfficerAssignedCases.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Insert into Investiage Table
            SqlCommand cmd = new SqlCommand("INSERT INTO InvestigationProgressTable Values (@caseid, @date, @progress)");
            cmd.Parameters.Add("@caseid", SqlDbType.VarChar, 10).Value = tbCaseID.Text;
            cmd.Parameters.Add("@date", SqlDbType.VarChar, 10).Value = tbDate.Text;
            cmd.Parameters.Add("@progress", SqlDbType.VarChar, 1000).Value = tbProgress.Text;
            bool insertedInInvestigation= DataAccessLayer.Insert(cmd);

            //Insert into Expense Table
            cmd = new SqlCommand("Insert into ExpensesTable Values (@caseid, @date, @expenditiure)");
            cmd.Parameters.Add("@caseid", SqlDbType.VarChar, 10).Value = tbCaseID.Text;
            cmd.Parameters.Add("@date", SqlDbType.VarChar, 10).Value = tbDate.Text;
            cmd.Parameters.Add("@expenditiure", SqlDbType.Float).Value = Convert.ToDouble(tbExpenditure.Text);
            bool insertedInExpense = DataAccessLayer.Insert(cmd);

            //Fetch TotalExpense from CaseTable
            //cmd = new SqlCommand("Select TotalExpense from CaseTable Where CaseID = @caseid");
            //cmd.Parameters.Add("@caseid", SqlDbType.VarChar, 10).Value = tbCaseID.Text;

            //decimal sum = Convert.ToDecimal(DataAccessLayer.GetValue(cmd)) + decimal.Parse(tbExpenditure.Text);

            //Update new totalExpense into CaseTable
            //cmd = new SqlCommand("Update CaseTable SET TotalExpense = " + sum + " Where CaseID=@caseid");
            //cmd.Parameters.Add("@caseid", SqlDbType.VarChar, 10).Value = tbCaseID.Text;
            //bool updateCaseTable = DataAccessLayer.Update(cmd);

            //Update Status=Closed in CaseTable if Checkbox CHecked
            bool updated;
            if (cbCaseCompleted.Checked)
            {
                cmd = new SqlCommand("Update CaseTable SET Status = 'Closed' Where CaseID = @caseid");
                cmd.Parameters.Add("@caseid", SqlDbType.VarChar, 10).Value = tbCaseID.Text;
                updated = DataAccessLayer.Update(cmd);
            }

           if (insertedInExpense && insertedInInvestigation )

            
            Response.Write("true");

        }
    }
}