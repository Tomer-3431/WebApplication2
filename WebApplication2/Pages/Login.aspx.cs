using System;
using System.Data;
using WebApplication2.appStart;

namespace WebApplication2.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["loginSubmit"] != null)
            {
                string fileName = "usersDB.mdf";
                string tableName = "userTable";
                string sqlSelect = $"select * from {tableName} where userName=" + "'" + Request.Form["inputUserName"] + "'";

                DataTable table = Helper.executeDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "wrong username or password or email";
                }
                else
                {
                    string password = (string)(table.Rows[0]["password"]);
                    password = password.Trim();
                    string email = (string)(table.Rows[0]["email"]);
                    email = email.Trim();
                    if (password.Equals(Request.Form["inputPassword"]) && email.Equals(Request.Form["inputEmail"]))
                    {
                        Application["Count"] = (int)Application["Count"] + 1;
                        Session["userName"] = Request.Form["inputUserName"];
                        if (Convert.ToBoolean(table.Rows[0]["isAdmin"]))
                        {
                            Session["rank"] = "Admin";
                            Response.Redirect("Management.aspx");
                        }
                        else
                        {
                            Session["rank"] = "user";
                            Response.Redirect("Homepage.aspx");
                        }
                    }
                    else
                    {
                        msg = "wrong username or password or email";
                    }
                }

            }
        }
    }
}