using System;
using System.Data;

namespace BUZZTEEZ.Site.Pages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions displayCart = new Functions();
           
            cartItems.DataSource = displayCart.SelectQuery("select * from Cart;");
            cartItems.DataBind();

            grandTotal.Text = displayCart.SelectSingleValue("select sum(CartProductTotal) from Cart where CartUserName = '"+ Session["user"] +"' ;");
        }
    }
}