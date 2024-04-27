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
    public partial class Forgot_Password : System.Web.UI.Page
    {
        public string msg = "";
        public int points = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["forgotPasswordSubmit"] != null)
            {
                string fileName = "usersDB.mdf";
                string tableName = "userTable";
                string sqlSelect = $"select * from {tableName} where userName=" + "'" + Request.Form["inputUserName"] + "'";

                DataTable table = Helper.executeDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "wrong username";
                else
                {
                    string email = (string)(table.Rows[0]["email"]);
                    email = email.Trim();
                    if (email != Request.Form["inputEmail"])
                    {
                        msg = "wrong email";
                    } else
                    {
                        points = 0;

                        string address = (string)(table.Rows[0]["address"]);
                        byte gender = (byte)(table.Rows[0]["gender"]);
                        string phoneNum = (string)(table.Rows[0]["phoneNum"]);
                        DateTime dateBorn = (DateTime)(table.Rows[0]["dateBorn"]);
                        string dateBornString = Helper2.fixDateFormatGet(dateBorn.ToString());
                        string color = (string)(table.Rows[0]["color"]);

                        if (address == Request.Form["inputAddress"]) points++;
                        if (gender.ToString() == Request.Form["inputGender"]) points++;
                        if (phoneNum == Request.Form["inputPhone"]) points++;
                        if (dateBornString == Request.Form["inputDateBorn"]) points++;
                        if (color == Request.Form["inputColor"]) points++;

                        if (points >= 3)
                        {
                            msg = ("account found and confirmed, your password is: " + (string)table.Rows[0]["password"]);
                        } else
                        {
                            // msg = "color: " + color + ", form: " + Request.Form["inputColor"] + "resault: " + (color == Request.Form["inputColor"]);
                            msg = ("account found but was not confirmed, some of your info is incorrect");
                        }
                    }
                }
            }
        }
    }
}