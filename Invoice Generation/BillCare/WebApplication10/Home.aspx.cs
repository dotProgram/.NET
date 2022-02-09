using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_email"] != null)
            {
                //user.Text = Session["new"].ToString().ToUpper();
            }
            else
            {
                Response.Redirect("/Login.aspx");

            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }
    }
}