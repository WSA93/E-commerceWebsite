using System;

namespace BUZZTEEZ.Admin.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyFunctions allProducts = new MyFunctions();
            products.DataSource = allProducts.SelectQuery("select ProductID, ProductName, ProductPrice, ProductCategory, ProductStock from Products order by ProductID desc;");
            products.DataBind();
        }
    }
}