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

        // public string userName = "";
        // public string email = "";
        // public string address = "";
        // public byte selected = 0;
        // public string[] gender = Helper2.genderArray(0);
        // public string phoneNum = "";
        // public DateTime dateBorn = new DateTime(2024, 04, 24);
        // public string dateBornString = "";
        // public string color = "";
        // public string password = "";
        // public string isAdmin = "";
        // public bool isUserFound = false;

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

                        /*
                        userName = Request.Form["inputUserName"];
                        email = (string)(table.Rows[0]["email"]);
                        address = (string)(table.Rows[0]["address"]);
                        address = Helper2.fixAddress(address);
                        selected = (byte)(table.Rows[0]["gender"]);
                        gender = Helper2.selectGender(selected);
                        phoneNum = (string)(table.Rows[0]["phoneNum"]);
                        phoneNum.Trim();
                        dateBorn = (DateTime)(table.Rows[0]["dateBorn"]);
                        dateBornString = Helper2.fixDateFormat(dateBorn.ToString());
                        color = (string)table.Rows[0]["color"];
                        color.Trim();
                        password = (string)(table.Rows[0]["password"]);
                        password.Trim();
                        if ((bool)(table.Rows[0]["isAdmin"])){
                            isAdmin = "checked";
                        } else
                        {
                            isAdmin = "";
                        }
                        isUserFound = true;
                        */
                    }
                }
            }
        }
    }
}