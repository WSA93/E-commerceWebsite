using System;
using System.Data;
using System.Web.Services.Description;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Window;

namespace BUZZTEEZ.Admin.Pages
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        DataTable products = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            MyFunctions editOrder = new MyFunctions();
            products = editOrder.SelectQuery("select OrderedProductQuantity, OrderedProductColor, OrderedProductSize, ProductName, ProductPrice from OrderedProducts join Products on OrderedProducts.OrderedProductID = Products.ProductID where OrderedProductID = '"+ Request.QueryString["product"] + "' and OrderedProducts.OrderID = '" + Request.QueryString["order"] + "'; ");

            if (!IsPostBack)
            {
                quantity.Text = products.Rows[0][0].ToString();
                color.SelectedValue = products.Rows[0][1].ToString();
                size.SelectedValue = products.Rows[0][2].ToString();
            }
            productid.Text = Request.QueryString["product"];
            productname.Text = products.Rows[0][3].ToString(); 
        }

        protected void saveOrder_Click(object sender, EventArgs e)
        {
            MyFunctions save = new MyFunctions();
            save.IUDQuery("update OrderedProducts set OrderedProductQuantity = '" + quantity.Text + "', OrderedProductColor = '" + color.Text + "', OrderedProductSize = '" + size.Text + "', OrderedProductTotal = '" + Convert.ToInt32(products.Rows[0][4]) * Convert.ToInt32(quantity.Text) + "' where OrderedProductID = '" + Request.QueryString["product"] + "' and OrderedProducts.OrderID = '" + Request.QueryString["order"] + "' ;");
            save.IUDQuery("update Orders set OrderGrandTotal = (select sum(OrderedProductTotal) from OrderedProducts where OrderedProducts.OrderID = '" + Request.QueryString["order"] + "') where OrderID = '" + Request.QueryString["order"] + "';");
            Response.Redirect("~/Admin/Pages/Order Details.aspx?view=" + Request.QueryString["order"]);
            testUpdate();
        }

        public void testUpdate()
        {
            MyFunctions checkUpdate = new MyFunctions();
            DataTable data = new DataTable();
            data = checkUpdate.SelectQuery("select OrderedProductQuantity, OrderedProductColor, OrderedProductSize, OrderedProductTotal from OrderedProducts where OrderedProductID = '" + Request.QueryString["product"] + "' and OrderedProducts.OrderID = '" + Request.QueryString["order"] + "' ;");
            
            if(data.Rows[0]["OrderedProductQuantity"].ToString() == quantity.Text.ToString() 
                && data.Rows[0]["OrderedProductColor"].ToString() == color.Text.ToString()
                && data.Rows[0]["OrderedProductSize"].ToString() == size.Text.ToString())
            {
                test.Text = "Unit Test Successfull";
            }
        }
    }
}