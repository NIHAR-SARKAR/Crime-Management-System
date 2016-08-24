using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _3rd_july;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Crime_Management_System.io
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Session["role"] = "io";
                name.Text = Session["IOID"].ToString();


                populateGV();
             

            }
            catch
            {
                Response.Redirect("~/io/restricted.aspx");

            }
        }


        void populateGV()
        {
            string sql = "SELECT * FROM CaseTable JOIN CaseDetailsTable ON CaseTable.CaseID = CaseDetailsTable.CaseID AND CaseTable.OfficerID = '" + Session["IOID"] + "' AND CaseTable.Status <> 'Closed'"; //take officerid from officer login session
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
            bool insertedInInvestigation = DataAccessLayer.Insert(cmd);

            

            decimal sum = Convert.ToDecimal(DataAccessLayer.GetValue(cmd)) + decimal.Parse(tbExpenditure.Text);

           

            //Update Status=Closed in CaseTable if Checkbox CHecked
            bool updated;
            if (cbCaseCompleted.Checked)
            {
                cmd = new SqlCommand("Update CaseTable SET Status = 'Closed' Where CaseID = @caseid");
                cmd.Parameters.Add("@caseid", SqlDbType.VarChar, 10).Value = tbCaseID.Text;
                updated = DataAccessLayer.Update(cmd);
            }
            populateGV();
            

           

        }
    }
}