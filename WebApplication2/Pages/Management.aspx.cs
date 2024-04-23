using System;

namespace WebApplication2.Pages
{
    public partial class Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rank"] != "Admin")
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}