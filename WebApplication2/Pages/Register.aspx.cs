using System;
using WebApplication2.appStart;
using WebApplication2.AppStart;

namespace WebApplication2.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            string tableName = "userTable";
            if (Request.Form["registerSubmit"] != null)
            //if(IsPostBack)
            {
                msg = "here";
                string userName = Request.Form["inputUserName"];
                string sqlSelect = "SELECT * FROM " + tableName + " WHERE userName = '" + userName + "'";
                if (Helper.isExist(fileName, sqlSelect))
                {
                    msg = "user name has been taken";
                }
                else
                {
                    string email = Request.Form["inputEmail"];
                    string address = Request.Form["inputAddress"];
                    string gender = Request.Form["inputGender"];
                    string phoneNum = Request.Form["inputPhone"];
                    string dateBorn = Request.Form["inputDateBorn"];
                    string color = Request.Form["inputColor"];
                    string password = Request.Form["inputPassword"];
                    string isAdmin = Request.Form["inputAdmin"];

                    if (isAdmin == "on")
                    {
                        isAdmin = "True";
                    } else
                    {
                        isAdmin = "False";
                    }

                    string sqlInsert = "INSERT INTO " + tableName + " VALUES ('" + userName + "'," + "N'" + email + "'," + "N'" + address + "'," + "N'" + gender + "'," + "N'" + phoneNum + "'," + "N'" + dateBorn + "'," + "N'" + color + "'," + "N'" + password + "'," + "N'" + isAdmin + "')";
                    // string sqlInsert = "INSERT INTO " + tableName + " VALUES ('" + userName + "'," + "N'" + password + "')";
                    Helper.doQuery(fileName, sqlInsert);
                    msg = "user was added to DB";
                }
            }
        }
    }
}