using System;
using System.Data.SqlClient;
using System.Configuration;


namespace BUZZTEEZ.Admin.Pages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyFunctions productDetails = new MyFunctions();
            
            details.DataSource = productDetails.SelectQuery("select ProductName, ProductPrice, ProductDescription, ProductCategory, ProductStock from Products where ProductID='" + Request.QueryString["view"] + "';");
            details.DataBind();

            colors.DataSource = productDetails.SelectQuery("select ProductColorName from ProductsColors where ProductColorProductID='" + Request.QueryString["view"] + "';");
            colors.DataBind();

            sizes.DataSource = productDetails.SelectQuery("select ProductSizeName from ProductsSizes where ProductSizeProductID='" + Request.QueryString["view"] + "';");
            sizes.DataBind();

            images.DataSource = productDetails.SelectQuery("select ProductImageLink from ProductsImages where ProductImageProductID='" + Request.QueryString["view"] + "';");
            images.DataBind();

            review.DataSource = productDetails.SelectQuery("select ProductReviewCustomerName, ProductReviewRating, ProductReiew from ProductsReviews where ProductReviewProductID='" + Request.QueryString["view"] + "';");
            review.DataBind();
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Pages/Add Products.aspx?view=" + Request.QueryString["view"].ToString());
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            MyFunctions delete = new MyFunctions();
            delete.IUDQuery("delete from ProductsImages where ProductImageProductID='" + Request.QueryString["view"] + "'");
            delete.IUDQuery("delete from ProductsReviews where ProductReviewProductID='" + Request.QueryString["view"] + "'");
            delete.IUDQuery("delete from ProductsSizes where ProductSizeProductID='" + Request.QueryString["view"] + "'");
            delete.IUDQuery("delete from ProductsColors where ProductColorProductID='" + Request.QueryString["view"] + "'");
            delete.IUDQuery("delete from Products where ProductID='" + Request.QueryString["view"] + "'");
           
            Response.Redirect("~/Admin/Pages/Products.aspx");
        }
    }
}