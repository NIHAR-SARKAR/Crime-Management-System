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
    public partial class WebForm1 : System.Web.UI.Page
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
                string sql = "Insert into PoliceStationDetails values ('newID', @branch, @add, @email, @phone)";
                SqlCommand cmd = new SqlCommand(sql);
                cmd.Parameters.Add("@branch", SqlDbType.VarChar).Value = tbName.Text;
                cmd.Parameters.Add("@add", SqlDbType.VarChar).Value = tbAddress.Text;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = tbEmail.Text;
                cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Int64.Parse(tbPhone.Text);

                bool inserted = DataAccessLayer.Insert("PoliceStationDetails", "PSID", "PS", "newID", cmd);
                bool insert = false;
                if (inserted)
                {
                    sql = "Insert into policestation values ('" + DataAccessLayer.Id + " ', @branch, @pass, @phone, @email,'OC', @add, '')";
                    cmd = new SqlCommand(sql);
                    cmd.Parameters.Add("@branch", SqlDbType.VarChar).Value = tbName.Text;
                    cmd.Parameters.Add("@add", SqlDbType.VarChar).Value = tbAddress.Text;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = tbEmail.Text;
                    cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Int64.Parse(tbPhone.Text);
                    cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = tbPassword.Text;
                    insert = DataAccessLayer.Insert(cmd);

                    lblstatus.Text = "New Oc Added Successfully, Lat Added Oc Id is:  " + DataAccessLayer.Id; 
                    lblstatus.ForeColor = System.Drawing.Color.Red;
                    //Response.Write("<script>Alert('Officer Added Successfully');</script>");
                }

                string[] pincode = tbPin.Text.Split(',');
                bool ins = false;
                foreach (var item in pincode)
                {
                    sql = "Insert into CoveringAreas values (" + item + ", '" + DataAccessLayer.Id + "')";
                    cmd = new SqlCommand(sql);
                    ins = DataAccessLayer.Insert(cmd);
                }
            }
            catch
            {
                Response.Write("<script>alert('Error on Adding Ploice Station , Try Again');</script>");
                //Response.Write("<script>Alert('Error on Submition , Enter Data Correctly !');</script>");
            }

            //Response.Write("inserted:" + inserted.ToString() + " insert:" + insert.ToString() + " ins:" + ins.ToString());
        }
    }
}