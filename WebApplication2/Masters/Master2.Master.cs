using System;
using System.Data;
using WebApplication2.appStart;

namespace WebApplication2.Pages
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rank"].ToString() != "guest")
            {
                string fileName = "usersDB.mdf";
                string tableName = "userTable";
                string sqlSelect = $"select * from {tableName} where userName=" + "'" + Session["userName"] + "'";

                DataTable table = Helper.executeDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    bDay.Visible = false;
                }
                else
                {
                    DateTime dateBorn = (DateTime)(table.Rows[0]["dateBorn"]);
                    bDay.Visible = (dateBorn.Day == DateTime.Today.Day && dateBorn.Month == DateTime.Today.Month) ;
                }
            } else
            {
                bDay.Visible = false;
            }
        }
    }
}