using System;

namespace WebApplication2.Pages
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Count"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["inputUserName"] = "guest";
            Session["inputFirstName"] = "guest";
            Session["login"] = "false";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session["inputUserName"] = "guest";
            Session["inputFirstName"] = "guest";
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}