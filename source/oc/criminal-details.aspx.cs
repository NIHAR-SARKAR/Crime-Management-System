using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Crime_Management_System.oc
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                name.Text = Session["adminrole"].ToString();
                if (!IsPostBack)
                {
                    GetData();
                    BindData();
                }
            }
            catch
            {
                Response.Redirect("~/oc/restricted.aspx");

            }
        }

        public void GetData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from CriminalDetailsTable", con);
            DataSet ds = new DataSet();

            da.Fill(ds, "CriminalDetailsTable");
            DataTable dtemp = ds.Tables[0];

            Session["da"] = da;
            Session["dtemp"] = dtemp;
        }

        private void BindData()
        {
            gv_updatestation.DataSource = (DataTable)Session["dtemp"];
            gv_updatestation.DataBind();
        }

    }
}