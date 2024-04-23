using System;

namespace WebApplication2.Pages
{
    public partial class Frisk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rank"] != "Admin" && Session["rank"] != "user")
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}