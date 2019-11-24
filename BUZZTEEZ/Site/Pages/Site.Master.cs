using System;

namespace BUZZTEEZ.Site.Pages
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions functions = new Functions();
            navigation.DataSource = functions.SelectQuery("select distinct(ProductCategory) from Products;");
            navigation.DataBind();

            cartCount.Text = functions.SelectSingleValue("select count(cartID) from Cart where CartUserName= '"+ Session["user"] +"' ;");
        }
    }
}