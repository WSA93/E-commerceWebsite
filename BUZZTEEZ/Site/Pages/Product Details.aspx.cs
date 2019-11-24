using System;
using System.Data;
using System.Web;

namespace BUZZTEEZ.Site.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        DataTable productDetails = new DataTable();
        DataTable producImages = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

            Functions product = new Functions();
            
            productDetails = product.SelectQuery("select * from Products where ProductID='"+ Request.QueryString["product"] +"';");

            name.Text = productDetails.Rows[0]["ProductName"].ToString();
            price.Text = productDetails.Rows[0]["ProductPrice"].ToString();
            description.Text = productDetails.Rows[0]["ProductDescription"].ToString();
            category.Text = productDetails.Rows[0]["ProductCategory"].ToString();
            quantity.Text = "1";

            if(productDetails.Rows[0]["ProductStock"] != null)
            {
                stock.Text = "In Stcok";
            }
            else
            {
                stock.Text = "Out of Stock";
            }

            producImages = product.SelectQuery("Select * from ProductsImages where ProductImageProductID ='" + Request.QueryString["product"] + "';");
            images.DataSource = producImages;
            images.DataBind();

            if(!IsPostBack)
            {
                colors.DataTextField = "ProductColorName";
                colors.DataValueField = "ProductColorName";
                colors.DataSource = product.SelectQuery("select ProductColorName from ProductsColors where ProductColorProductID ='" + Request.QueryString["product"] + "';");
                colors.DataBind();

                sizes.DataTextField = "ProductSizeName";
                sizes.DataValueField = "ProductSizeName";
                sizes.DataSource = product.SelectQuery("select ProductSizeName from ProductsSizes where ProductSizeProductID ='" + Request.QueryString["product"] + "';");
                sizes.DataBind();
            }

        }

        protected void cart_Click(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                Application["pid"] = productDetails.Rows[0]["ProductID"];
                Response.Redirect("~/Site/Pages/Login.aspx");
            }
            else
            {
                Functions addToCart = new Functions();
                addToCart.IUDQuery("insert into Cart values('"+ Session["user"] + "', '" + productDetails.Rows[0]["ProductID"] + "' , '" + productDetails.Rows[0]["ProductName"] + "', '" + producImages.Rows[0]["ProductImageLink"] + "' ,'" + quantity.Text + "', '" + productDetails.Rows[0]["ProductPrice"] + "' , '" + colors.SelectedValue + "', '" + sizes.SelectedValue + "', '"+ Convert.ToInt32(productDetails.Rows[0][3]) * Convert.ToInt32(quantity.Text) + "');");
                Application["pid"] = productDetails.Rows[0]["ProductID"];
                Response.Redirect("~/Site/Pages/Product Details.aspx?product=" + Application["pid"]);
            }
        }
    }
}