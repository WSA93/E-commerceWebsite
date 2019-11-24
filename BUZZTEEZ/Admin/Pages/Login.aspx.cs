using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUZZTEEZ.Admin.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Functions login = new Functions();
            if (login.SelectQuery("select UserName, UserPassword from Users where UserName = '" + username.Text + "' and  UserPassword = '" + password.Text + "' ;").Rows.Count == 1)
            {
                Application["user"] = username.Text;
                Response.Redirect("~/Admin/Pages/Admin Dashboard.aspx");
            }
            else
            {
                failed.Text = "UserName or Password Is Incorrect";
            }

        }
    }
}