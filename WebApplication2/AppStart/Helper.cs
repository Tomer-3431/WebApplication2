using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace WebApplication2.appStart
{
    public class Helper
    {
        public static SqlConnection connectToDB(string fileName)
        {
            string path = HttpContext.Current.Server.MapPath("../AppData/") + fileName;
            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }

        public static void doQuery(string fileName, string sql)
        {
            SqlConnection conn = connectToDB(fileName);
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        public static bool isExist(string fileName, string sql)
        {

            SqlConnection conn = connectToDB(fileName);
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader();

            bool found = Convert.ToBoolean(data.Read());
            conn.Close();
            return found;

        }

        public static DataTable executeDataTable(string fileName, string sql)
        {
            SqlConnection conn = connectToDB(fileName);
            conn.Open();

            DataTable dt = new DataTable();

            SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);

            tableAdapter.Fill(dt);


            return dt;
        }

        public static String fixDateFormat(string date)
        {
            int year = int.Parse(date.Substring(6, 4));
            int month = int.Parse(date.Substring(0, 2));
            int day = int.Parse(date.Substring(3, 2));

            return year + "-" + month + "-" + day;
        }
    }
}