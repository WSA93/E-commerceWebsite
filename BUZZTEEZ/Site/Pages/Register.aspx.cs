using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUZZTEEZ.Site.Pages
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Functions register = new Functions();

            if (register.SelectQuery("select UserName from Users where UserName = '" + username.Text + "'").Rows.Count == 1)
            {
                userexist.Text = "User Name Already Exist";
                Response.Redirect("~/Site/Pages/Register.aspx");
            }
            else if (password.Text != confirmPassword.Text)
            {
                passmatch.Text = "Passwords Does Not Match";

            }
            else
            {
                register.IUDQuery("insert into Users (UserName,UserEmail,UserPassword) values('" + username.Text + "', '" + email.Text + "', '" + password.Text + "')");
                Session["user"] = username.Text;
                Response.Redirect("~/Site/Pages/Product Details.aspx?product=" + Application["pid"]);
            }

            
        }
    }
}