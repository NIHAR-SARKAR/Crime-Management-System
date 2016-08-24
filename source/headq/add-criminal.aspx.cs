using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace _3rd_july
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                validuser.Text = Session["adminrole"].ToString();
              
            }
            catch
            {
                Response.Redirect("~/headq/restricted.aspx");

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            try
            {
                string sql = "Insert into CriminalDetailsTable values ('newID', @name, @sex, @dob, 'live', @photo, @details)";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = tbFName.Text + " " + tbLName.Text;
                cmd.Parameters.AddWithValue("@sex", ddlSex.Text);
                cmd.Parameters.AddWithValue("@dob", tbDob.Text);
                cmd.Parameters.AddWithValue("@details", tbDetails.Text);
                cmd.Parameters.Add("@photo", SqlDbType.VarChar, 50).Value = Server.MapPath(@"~\Images\User Images\") + fuPhoto.PostedFile.FileName;

                bool added = DataAccessLayer.Insert("CriminalDetailsTable", "criminalID", "CR", "newID", cmd);

                if (added)
                {


                    fuPhoto.PostedFile.SaveAs(Server.MapPath(@"~\Images\User Images\") + fuPhoto.PostedFile.FileName);
                    Response.Write("<script>alert('Added Successfully');</script>");
                    newId.Text = "Last Assigned Criminal Id is : " + DataAccessLayer.Id;
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Error on Adding Criminal , Try Again');</script>");
            }
        }

    }
}