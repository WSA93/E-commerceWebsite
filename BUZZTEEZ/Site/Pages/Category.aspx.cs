using System;

namespace BUZZTEEZ.Site.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions products = new Functions();
            card.DataSource = products.SelectQuery("select ProductID, ProductName, ProductCategory, ProductPrice, ProductImageLink from Products join ProductsImages on Products.ProductID = ProductImageProductID where Products.ProductCategory='" + Request.QueryString["category"] + "';");
            card.DataBind();
            headingtext.Text = Request.QueryString["category"];
        }
    }
}