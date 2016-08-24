using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using _3rd_july;

namespace Crime_Management_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "Insert into VictimDetailsTable values ('newID', @uname, @add, @pin, @sex, @dob, @phno, @email, @idprof, @photo)";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = tbFName.Text + " " + tbLName.Text;
                cmd.Parameters.Add("@sex", SqlDbType.VarChar, 6).Value = ddlSex.Text;
                cmd.Parameters.Add("@dob", SqlDbType.Date).Value = tbDOB.Text;
                cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = tbAddress.Text;
                cmd.Parameters.Add("@pin", SqlDbType.Int).Value = Int32.Parse(tbPin.Text);
                cmd.Parameters.Add("@phno", SqlDbType.BigInt).Value = Int64.Parse(tbPhone.Text);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = tbEmail.Text;
                cmd.Parameters.Add("@idprof", SqlDbType.VarChar, 30).Value = tbIDprof.Text;
                cmd.Parameters.Add("@photo", SqlDbType.VarChar).Value = "~/Images/User Images/" + fuPhoto.PostedFile.FileName;

                bool added = DataAccessLayer.Insert("VictimDetailsTable", "UserID", "US", "newID", cmd);
                Response.Write(added);
                if (added)
                {
                    Session["uname"] = tbFName.Text.ToString() + " " + tbLName.Text.ToString();
                    Session["uid"] = DataAccessLayer.Id;
                    Session["udob"] = tbDOB.Text.ToString();
                    Session["uphone"] = tbPhone.Text.ToString();
                    Session["umail"] = tbEmail.Text.ToString();
                    Session["upin"] = tbPin.Text.ToString();
                    Session["uimg"] = "~/Images/User Images/" + fuPhoto.PostedFile.FileName;

                    fuPhoto.PostedFile.SaveAs(Server.MapPath(@"~\Images\User Images\") + fuPhoto.PostedFile.FileName);
                    Response.Redirect("registration-succesfull.aspx?UserID=" + DataAccessLayer.Id);
                }
            }
            catch (Exception)
            {
                Response.Write("Error on Registration");
            }
        }
    }
}