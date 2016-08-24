using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace _3rd_july
{
    public partial class CrimeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
                string sql = "Select Phno From dbo.VictimDetailsTable Where UserID = @usid";
                SqlCommand cmd = new SqlCommand(sql);
                //con.Open();
                cmd.Parameters.AddWithValue("@usid", tbUserID.Text);
                string phno = DataAccessLayer.GetValue(cmd).ToString();

                //Response.Write(phno);
                //string phno = cmd.ExecteScalar().ToString();
                if (tbPhn.Text != phno)
                {
                    lblStatus.Text = "You are not an authorized user. ";

                    return;
                }

                //Adding to CaseTable
                sql = "Insert into CaseTable (CaseID, UserID) Values ('caseID', '" + tbUserID.Text + "')";
                cmd = new SqlCommand();
                cmd.CommandText = sql;
                bool added = DataAccessLayer.Insert("CaseTable", "CaseID", "CS", "caseID", cmd);

                //Adding to CaseDetailsTable
                sql = "Insert into CaseDetailsTable Values ('" + DataAccessLayer.Id + "', @VName, @Age, '" + ddlVSex.Text + "', @details, @date, @time, @place, @image, '" + ddlCType.SelectedValue + "')";
                cmd = new SqlCommand(sql);

                cmd.Parameters.Add("@VName", SqlDbType.VarChar, 30).Value = tbVName.Text;
                cmd.Parameters.Add("@Age", SqlDbType.Int).Value = Int32.Parse(tbVAge.Text);
                cmd.Parameters.Add("@Details", SqlDbType.VarChar, 100).Value = tbCDetails.Text;
                cmd.Parameters.Add("@date", SqlDbType.Date).Value = tbCDate.Text;
                cmd.Parameters.Add("@time", SqlDbType.Time).Value = tbCTime.Text;
                cmd.Parameters.Add("@place", SqlDbType.VarChar, 20).Value = tbCPlace.Text;
                cmd.Parameters.Add("@image", SqlDbType.VarChar, 50).Value = Server.MapPath(@"~\Images\User Images\") + fuMissingPerson.FileName;

                bool confirm = DataAccessLayer.Insert(cmd);

                if (added && confirm)
                {
                    Session["user"] = tbUserID.Text;
                        Session["case"]=DataAccessLayer.Id;
                    Response.Redirect(@"~/case-accepted.aspx?UserID=" + Request["UserID"] + "&CaseID=" + DataAccessLayer.Id);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}