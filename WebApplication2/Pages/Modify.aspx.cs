using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.appStart;
using WebApplication2.AppStart;

namespace WebApplication2.Pages
{
    public partial class Modify : System.Web.UI.Page
    {
        public string msg = "";

        public string userName = "";
        public string email = "";
        public string address = "";
        public byte selected = 0;
        public string[] gender = Helper2.genderArray(0);
        public string phoneNum = "";
        public DateTime dateBorn = new DateTime(2024, 04, 24);
        public string dateBornString = "";
        public string color = "";
        public string password = "";
        public string isAdmin = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rank"].ToString() != "Admin")
            {
                Response.Redirect("Error.aspx");
            } else
            {
                userName = Session["modify"].ToString();
                string fileName = "usersDB.mdf";
                string tableName = "userTable";
                string sqlSelect = $"select * from {tableName} where userName=" + "'" + userName + "'";

                DataTable table = Helper.executeDataTable(fileName, sqlSelect);

                email = (string)(table.Rows[0]["email"]);
                address = (string)(table.Rows[0]["address"]);
                address = Helper2.fixAddress(address);
                selected = (byte)(table.Rows[0]["gender"]);
                gender = Helper2.selectGender(selected);
                phoneNum = (string)(table.Rows[0]["phoneNum"]);
                phoneNum.Trim();
                dateBorn = (DateTime)(table.Rows[0]["dateBorn"]);
                dateBornString = Helper2.fixDateFormatGet(dateBorn.ToString());
                color = (string)table.Rows[0]["color"];
                color.Trim();
                password = (string)(table.Rows[0]["password"]);
                password.Trim();
                if ((bool)(table.Rows[0]["isAdmin"]))
                {
                    isAdmin = "checked";
                }
                else
                {
                    isAdmin = "";
                }


                if (Request.Form["managementSubmit"] != null)
                {
                    string sqlDelete = "DELETE FROM " + tableName + " WHERE userName = " + "'" + userName + "'";
                    msg = sqlDelete;
                    Helper.doQuery(fileName, sqlDelete);

                    email = Request.Form["inputEmail"];
                    address = Request.Form["inputAddress"];
                    string genderInsert = Request.Form["inputGender"];
                    phoneNum = Request.Form["inputPhone"];
                    string dateBornInsert = Request.Form["inputDateBorn"];
                    color = Request.Form["inputColor"];
                    password = Request.Form["inputPassword"];
                    string isAdminInsert = Request.Form["inputAdmin"];

                    if (isAdminInsert == "on")
                    {
                        isAdminInsert = "True";
                        isAdmin = "checked";
                    }
                    else
                    {
                        isAdminInsert = "False";
                        isAdmin = "";
                    }

                    string sqlInsert = "INSERT INTO " + tableName + " VALUES ('" + userName + "'," + "N'" + email + "'," + "N'" + address + "'," + "N'" + genderInsert + "'," + "N'" + phoneNum + "'," + "N'" + dateBornInsert + "'," + "N'" + color + "'," + "N'" + password + "'," + "N'" + isAdminInsert + "')";
                    // string sqlInsert = "INSERT INTO " + tableName + " VALUES ('" + userName + "'," + "N'" + password + "')";
                    Helper.doQuery(fileName, sqlInsert);
                    msg = "user was modified";
                }
            }
        }
    }
}