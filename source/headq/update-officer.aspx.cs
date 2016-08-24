using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace crimemanageX.headq
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                validuser.Text = Session["adminrole"].ToString();
                if (!IsPostBack)
                {
                    GetData();
                    BindData();
                }
            }
            catch
            {
                Response.Redirect("~/headq/restricted.aspx");

            }
        }


        public void GetData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from OfficerDetailsTable", con);
            DataSet ds = new DataSet();

            da.Fill(ds, "OfficerDetailsTable");
            DataTable dtemp = ds.Tables[0];

            Session["da"] = da;
            Session["dtemp"] = dtemp;
        }

        private void BindData()
        {
            GridView1.DataSource = (DataTable)Session["dtemp"];
            GridView1.DataBind();
        }






        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txt1 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1"));
            TextBox txt2 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2"));
            TextBox txt3 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3"));
            TextBox txt4 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4"));
            TextBox txt5 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5"));
            TextBox txt6 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6"));
            TextBox txt7 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7"));
            TextBox txt8 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8"));


            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][0] = txt1.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][1] = txt2.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][3] = txt3.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][4] = txt4.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][6] = txt5.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][8] = txt6.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][9] = txt7.Text;
            ((DataTable)Session["dtemp"]).Rows[e.RowIndex][10] = txt8.Text;

            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
            ((SqlDataAdapter)Session["da"]).Update((DataTable)Session["dtemp"]);


            GridView1.EditIndex = -1;
            GetData();
            BindData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        

        
        
    }
}