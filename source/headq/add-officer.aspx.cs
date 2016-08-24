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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            try
            {
                validuser.Text = Session["adminrole"].ToString();
                if (!IsPostBack)
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
                    string sql = "select PSID,Branch from PoliceStationDetails";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql, con);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {

                        dlpsID.Items.Add(new ListItem(reader[1].ToString(), reader[0].ToString()));

                    }

                    con.Close();
                    dlpsID.SelectedIndex = 0;
                }
                
                
                
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



                //add on PoliceStationDetails table



                //add on PoliceStationDetails table
                string sql = "Insert into OfficerDetailsTable values ('newID', @uname, @pass, @phn, @email,'io', @add, @photo, @PSID, @dob, @sex)";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sql;


                
               


                cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = tbFName.Text + " " + tbLName.Text;
                cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = tbPassword.Text;
                cmd.Parameters.Add("@phn", SqlDbType.BigInt).Value =Int64.Parse(tbPhone.Text);
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = tbEmail.Text;
                cmd.Parameters.Add("@add", SqlDbType.VarChar).Value = tbAddress.Text;
                cmd.Parameters.Add("@photo", SqlDbType.VarChar).Value = Server.MapPath(@"~\Images\User Images\") + fuPhoto.PostedFile.FileName;
                cmd.Parameters.Add("@PSID", SqlDbType.VarChar).Value = dlpsID.SelectedValue;
                cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = DOB.Text;
                cmd.Parameters.Add("@sex", SqlDbType.VarChar).Value = ddlSex.Text;
                bool added = DataAccessLayer.Insert("OfficerDetailsTable", "OfficerID", "IO", "newID", cmd);


                if (added)
                {
                   

                    fuPhoto.PostedFile.SaveAs(Server.MapPath(@"~\Images\User Images\") + fuPhoto.PostedFile.FileName);
                    Response.Write("<script>alert('Officer Added');</script>");
                    newId.Text ="Last Assigned Officer Id is : "+ DataAccessLayer.Id;
                }
            }
           catch (Exception)
           {
               Response.Write("<script>alert('Error on Adding Officer , Try Again');</script>");
           }
        }

    }
}