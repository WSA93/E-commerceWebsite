using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUZZTEEZ.Admin.Pages
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyFunctions orderDetails = new MyFunctions();
            orderdetails.DataSource = orderDetails.SelectQuery("select OrderStatus, OrderTimeStamp, OrderPaymentMethod from Orders where OrderID = '"+ Request.QueryString["view"] +"';");
            orderdetails.DataBind();

            productdetails.DataSource = orderDetails.SelectQuery("select Products.ProductID, Products.ProductName, Products.ProductPrice, OrderedProducts.OrderedProductQuantity, OrderedProducts.OrderedProductColor, OrderedProducts.OrderedProductSize, OrderedProducts.OrderedProductTotal from Products join OrderedProducts on Products.ProductID = OrderedProducts.OrderedProductID  where OrderID = '" + Request.QueryString["view"] + "'; ");
            productdetails.DataBind();

            grandTotal.Text = orderDetails.SelectSingleValue("select OrderGrandTotal from Orders where OrderID = '" + Request.QueryString["view"] +"';");

            customerinfo.DataSource = orderDetails.SelectQuery("select UserName, UserPhone, UserAddress from Users join orders on Users.UserID = Orders.OrderCustomerID where Orders.OrderID = '" + Request.QueryString["view"] + "'; ");
            customerinfo.DataBind();
        }

        protected void status_Click(object sender, EventArgs e)
        {
            MyFunctions updateStatus = new MyFunctions();
            updateStatus.IUDQuery("update Orders set OrderStatus = '"+ orderstatus.SelectedValue +"' where OrderID = '"+ Request.QueryString["view"] +"';");
            Response.Redirect("~/Admin/Pages/Order Details.aspx?view=" + Request.QueryString["view"]);
        }
    }
}