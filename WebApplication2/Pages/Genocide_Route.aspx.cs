using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Pages
{
    public partial class Genocide_Route : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["inputFirstName"] == "Tomer" && Session["inputUserName"] == "Tomer1234") && !(Session["inputFirstName"] == "Admin" && Session["inputUserName"] == "Admin123"))
            {
                Session["inputUserName"] = "guest";
                Session["inputFirstName"] = "guest";
            }

            if (Session["inputUserName"] == "guest" && Session["inputFirstName"] == "guest")
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}