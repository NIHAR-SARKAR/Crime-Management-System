using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace _3rd_july
{
    public class DataAccessLayer
    {
        static string _ID;

        public static string Id
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public static bool Insert(string tblName, string colname, string prefix, string replaceString, SqlCommand insertCmd)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            bool added = false;
            string sql = "SELECT " + colname + " FROM " + tblName;
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr;
            string ID = "", newID = "";
            try
            {
                con.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                    ID = sdr[colname].ToString();
                sdr.Close();
                newID = (ID != "") ? prefix + (Int32.Parse(ID.Substring(2)) + 1).ToString() : prefix + 100;
                insertCmd.CommandText = insertCmd.CommandText.Replace(replaceString, newID);
                insertCmd.Connection = con;
                insertCmd.ExecuteNonQuery();
                added = true;
                
                Id = newID;
            }
            catch (Exception) { added = false; }
            finally
            {
                con.Close();
            }
            return added;
        }

        public static bool Insert(SqlCommand insertCmd)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            insertCmd.Connection = con;
            bool added = false;
            try
            {
                con.Open();
                insertCmd.ExecuteNonQuery();
                added = true;
            }
           catch (Exception) { added = false; }
           finally { con.Close(); }

           return added;
        }

        public static DataSet Select(string selectCmd)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter(selectCmd, con);
            DataSet ds = new DataSet();
            try { da.Fill(ds); }
            catch (Exception) { }
            return ds;
        }

        public static bool Update(SqlCommand updateCommand)
        {
            bool updated = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            updateCommand.Connection = con;
            try
            {
                con.Open();
                updateCommand.ExecuteNonQuery();
                updated = true;
            }
            catch (Exception)
            {
                updated = false;
            }
            finally
            {
                con.Close();
            }
            
            return updated;
        }

        public static object GetValue(SqlCommand getCmd)
        {
            object value = null;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            getCmd.Connection = con;
            try
            {
                con.Open();
                value = getCmd.ExecuteScalar();
            }
            catch (Exception)
            { }
            finally
            {
                con.Close();
            }
            return value;
        }

        public static bool AuthenticateUser(SqlCommand cmd)
        {
            int count = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
           try
            {
               
                cmd.Connection = con;
                con.Open();
                count = (int)cmd.ExecuteScalar();
               


            }
            catch
            {

            }
            finally { con.Close(); }
            return count == 1;
        }
    }
}