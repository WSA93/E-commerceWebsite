using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUZZTEEZ.Admin.Pages
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyFunctions allOrders = new MyFunctions();
            orders.DataSource = allOrders.SelectQuery("select Orders.OrderID, Users.UserName, Orders.OrderTimeStamp, Orders.OrderStatus, Orders.OrderGrandTotal from Orders join Users on Users.UserID = Orders.OrderCustomerID order by Orders.OrderTimeStamp desc; ");
            orders.DataBind();
            
        }
    }
}