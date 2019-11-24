using System;
using System.Data;

namespace BUZZTEEZ.Site.Pages
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        Functions details = new Functions();
        DataTable customer = new DataTable();
        DataTable cartDetails = new DataTable();
        string total = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            customer = details.SelectQuery("select UserID, UserEmail, UserPhone, UserAddress from Users where UserName= '"+ Session["user"] +"';");

            if(!IsPostBack)
            {
               email.Text = customer.Rows[0]["UserEmail"].ToString();
               mobile.Text = customer.Rows[0]["UserPhone"].ToString();
               address.Text = customer.Rows[0]["UserAddress"].ToString();
            }

            cartDetails = details.SelectQuery("select * from Cart;");
            cartItems.DataSource = cartDetails;
            cartItems.DataBind();

            total = details.SelectSingleValue("select sum(CartProductTotal) from Cart where CartUserName = '" + Session["user"] + "' ;");
            grandTotal.Text = total;
        }

        protected void saveOrder_Click(object sender, EventArgs e)
        {
            Functions saveOrder = new Functions();
            saveOrder.IUDQuery("insert into Orders (OrderCustomerID,OrderPaymentMethod,OrderGrandTotal) values('" + customer.Rows[0]["UserID"] + "','COD', '"+ total +"');");
            string orderID = saveOrder.SelectSingleValue("select max(OrderID) from Orders;");

            for (int i=0;  i < cartDetails.Rows.Count; ++i)
            {
                saveOrder.IUDQuery("insert into OrderedProducts values('"+ orderID +"','" + cartDetails.Rows[i]["CartProductID"] + "', '" + cartDetails.Rows[i]["CartProductQuantity"] + "', '" + cartDetails.Rows[i]["CartProductPrice"] + "' , '" + cartDetails.Rows[i]["CartProductTotal"] + "', '" + cartDetails.Rows[i]["CartProductSize"] + "', '" + cartDetails.Rows[i]["CartProductColor"] + "');");

            }
            
        }
    }
}