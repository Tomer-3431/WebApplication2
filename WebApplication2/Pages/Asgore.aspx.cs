using System;

namespace WebApplication2.Pages
{
    public partial class Asgore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rank"].ToString() != "Admin" && Session["rank"].ToString() != "user")
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}