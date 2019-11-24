using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUZZTEEZ.Site.Pages
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            Functions login = new Functions();
            if(login.SelectQuery("select UserName, UserPassword from Users where UserName='" + username.Text + "' and UserPassword='" + password.Text + "' and UserStatus= 'Customer';").Rows.Count == 1)
            {
                Session["user"] = username.Text;
                Response.Redirect("~/Site/Pages/Product Details.aspx?product=" + Application["pid"]);
            }
            else
            {
                failed.Text = "User Name or Password Is Incorrect";
            }
            
        }
    }
}