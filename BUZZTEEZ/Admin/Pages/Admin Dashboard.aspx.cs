using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUZZTEEZ.Admin.Pages
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions stats = new Functions();

            newOrder.Text = stats.SelectSingleValue("select count(OrderStatus) from Orders where OrderStatus='New' ;");
            pending.Text = stats.SelectSingleValue("select count(OrderStatus) from Orders where OrderStatus='PENDING' ;");
            confirm.Text = stats.SelectSingleValue("select count(OrderStatus) from Orders where OrderStatus='CONFIRMED' ;");
        }
    }
}