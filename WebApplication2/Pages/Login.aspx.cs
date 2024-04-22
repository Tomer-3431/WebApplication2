using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication2.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["loginSubmit"] != null)
            //if (IsPostBack)
            //if (Session["loginSubmit"] !=  null)
            {
                string userName = Request.Form["inputUserName"];
                string password = Request.Form["inputPassword"];

                if (userName == "Admin123" && password == "Admin1234")
                {
                    Session["inputUserName"] = "Admin123";
                    Session["inputFirstName"] = "Admin";
                    Session["login"] = "true";
                    Application["count"] = (int)Application["count"] + 1;
                    Response.Redirect("Management.aspx");

                }
                else if (userName == "Tomer1234" && password == "Q1w2e3r4")
                {
                    Session["inputUserName"] = "Tomer1234";
                    Session["inputFirstName"] = "Tomer";
                    Session["login"] = "true";
                    Application["count"] = (int)Application["count"] + 1;
                    Response.Redirect("Homepage.aspx");

                }
                else
                {
                    Session["inputUserName"] = "guest";
                    Session["inputFirstName"] = "guest";
                    Session["login"] = "false";
                    Response.Redirect("Homepage.aspx");

                }
            }
        }
    }
}