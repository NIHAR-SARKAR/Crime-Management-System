using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _3rd_july;
using System.Data.SqlClient;
using System.Data;

namespace Crime_Management_System.io
{
    public partial class io_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sql = "select count(*) from OfficerDetailsTable where OfficerID = @ofid AND Password = @pass";
            SqlCommand cmd=new SqlCommand(sql);
            cmd.Parameters.Add("@ofid" , SqlDbType.VarChar,10).Value=tbUsername.Text;
            cmd.Parameters.Add("@pass" , SqlDbType.VarChar,100).Value=tbPassword.Text;

            if (DataAccessLayer.AuthenticateUser(cmd))
            {
                Session["role"] = "io";
                Session["IOID"] = tbUsername.Text;

                //sql = "Select Photo from OfficerDetailsTable where OfficerID = " + tbUsername.Text;
                //SqlCommand cm = new SqlCommand(sql);
                //Session["Photo"] = DataAccessLayer.GetValue(cm).ToString();

                //sql = "Select OfficerName from OfficerDetailsTable where OfficerID = " + tbUsername.Text;
                //cmd = new SqlCommand(sql);
                //Session["name"] = DataAccessLayer.GetValue(cmd).ToString();

                Response.Redirect("~\\io\\case-progress.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please Enter Valid Username And Password ');</script>");
            }
        }
    }
}