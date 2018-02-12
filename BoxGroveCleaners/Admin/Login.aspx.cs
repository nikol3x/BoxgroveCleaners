using BoxGroveCleaners.Models;
using System;
using System.IO;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace BoxGroveCleaners.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("/Admin/Index.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = WebConfigurationManager.AppSettings["adminUsername"].ToLower();
            string password = WebConfigurationManager.AppSettings["adminPassword"].ToLower();

            if (txtUsername.Text.ToLower() == username && txtPassword.Text == password)
            {
                Session["user"] = "Sabino";

                Response.Redirect("/Admin/Index.aspx");
            }
            else
            {
                lblLoginError.Text = "User name or password provided is invalid";
            }
        }

        #region Helpers

        #endregion

        #region Internal Classes/Enums/Structs

        #endregion
    }
}