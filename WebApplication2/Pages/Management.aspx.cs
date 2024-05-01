using System;
using System.Data;
using System.Drawing;
using WebApplication2.appStart;
using WebApplication2.AppStart;

namespace WebApplication2.Pages
{
    public partial class Management : System.Web.UI.Page
    {
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rank"].ToString() != "Admin")
            {
                Response.Redirect("Error.aspx");
            } else
            {

                if (Request.Form["managementSubmit"] != null)
                {
                    string fileName = "usersDB.mdf";
                    string tableName = "userTable";
                    string sqlSelect = $"select * from {tableName} where userName=" + "'" + Request.Form["inputUserName"] + "'";

                    DataTable table = Helper.executeDataTable(fileName, sqlSelect);
                    int length = table.Rows.Count;
                    if (length == 0)
                    {
                        msg = "user was not found";
                    }
                    else
                    {
                        msg = "user was found";

                        if (Request.Form["modifyOrDelete"] == "delete")
                        {
                            string sqlDelete = "DELETE FROM " + tableName + " WHERE userName = " + "'" + Request.Form["inputUserName"] + "'";
                            msg = sqlDelete;
                            Helper.doQuery(fileName, sqlDelete);
                            msg = "user was deleted from DB";
                        }
                        else if (Request.Form["modifyOrDelete"] == "modify")
                        {
                            Session["modify"] = Request.Form["inputUserName"];
                            Response.Redirect("Modify.aspx");
                        }
                    }
                }
            }
        }
    }
}