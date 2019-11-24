using System;
using System.Data;
using System.IO;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace BUZZTEEZ.Admin.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable id = new DataTable();
        DataTable reviews = new DataTable();
        DataTable images = new DataTable();

        protected void save_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["view"] != null)
            {
                MyFunctions edit = new MyFunctions();
                edit.IUDQuery("delete from ProductsReviews where ProductReviewProductID='" + Request.QueryString["view"].ToString() + "';");
                edit.IUDQuery("delete from ProductsImages where ProductImageProductID='" + Request.QueryString["view"].ToString() + "';");
                edit.IUDQuery("delete from ProductsSizes where ProductSizeProductID='" + Request.QueryString["view"] + "';");
                edit.IUDQuery("delete from ProductsColors where ProductColorProductID='" + Request.QueryString["view"] + "';");
                edit.IUDQuery("delete from Products where ProductID='" + Request.QueryString["view"] + "';");

                edit.IUDQuery("insert into Products values ('" + ProductName.Text + "', '" + ProductDescription.Text + "', '" + ProductPrice.Text + "', '" + ProductCategory.SelectedValue + "', '" + ProductStock.Text + "');");
                id = edit.SelectQuery("select max(ProductID) from Products;");
                id.Rows[0][0].ToString();

                if (white.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'White');");
                }
                if (black.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Black');");
                }
                if (gray.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Gray');");
                }
                if (red.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Red');");
                }
                if (blue.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Blue');");
                }
                if (yellow.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Yellow');");
                }
                if (pink.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Pink');");
                }
                if (brown.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Brown');");
                }
                if (green.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Green');");
                }
                if (purple.Checked)
                {
                    edit.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Purple');");
                }
                ////////////////////////////////////////
                if (xs.Checked)
                {
                    edit.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','XS');");
                }
                if (s.Checked)
                {
                    edit.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','S');");
                }
                if (m.Checked)
                {
                    edit.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','M');");
                }
                if (l.Checked)
                {
                    edit.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','L');");
                }
                if (xl.Checked)
                {
                    edit.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','XL');");
                }
                if (xxl.Checked)
                {
                    edit.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','XLL');");
                }
                ///////////////////////////////////
                if (image.HasFile)
                {
                    foreach (HttpPostedFile postedFile in image.PostedFiles)
                    {
                        string file = Path.GetFileName(postedFile.FileName);
                        postedFile.SaveAs(Server.MapPath("..//..//img//" + file));
                        edit.IUDQuery("insert into ProductsImages values('" + id.Rows[0][0].ToString() + "', '../../img/" + file + "');");
                    }
                }

                for(int i=0; i<images.Rows.Count; ++i)
                {
                    edit.IUDQuery("insert into ProductsImages values('" + id.Rows[0][0].ToString() + "', '" + images.Rows[i][0] + "'); ");
                }

                for (int i = 0; i < reviews.Rows.Count; ++i)
                {
                    edit.IUDQuery("insert into ProductsReviews values('" + id.Rows[0][0].ToString() + "', '" + reviews.Rows[i][0] + "', '" + reviews.Rows[i][1] + "', '" + reviews.Rows[i][2] + "'); ");
                }
            }
            else
            {
                MyFunctions add = new MyFunctions();
                add.IUDQuery("insert into Products values ('" + ProductName.Text + "', '" + ProductDescription.Text + "', '" + ProductPrice.Text + "', '" + ProductCategory.SelectedValue + "', '" + ProductStock.Text + "');");
                id = add.SelectQuery("select max(ProductID) from Products;");
                id.Rows[0][0].ToString();

                if (white.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'White');");
                }
                if (black.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Black');");
                }
                if (gray.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Gray');");
                }
                if (red.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Red');");
                }
                if (blue.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Blue');");
                }
                if (yellow.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Yellow');");
                }
                if (pink.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Pink');");
                }
                if (brown.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Brown');");
                }
                if (green.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Green');");
                }
                if (purple.Checked)
                {
                    add.IUDQuery("insert into ProductsColors values('" + id.Rows[0][0].ToString() + "', 'Purple');");
                }
                ////////////////////////////////////////
                if (xs.Checked)
                {
                    add.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','XS');");
                }
                if (s.Checked)
                {
                    add.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','S');");
                }
                if (m.Checked)
                {
                    add.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','M');");
                }
                if (l.Checked)
                {
                    add.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','L');");
                }
                if (xl.Checked)
                {
                    add.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','XL');");
                }
                if (xxl.Checked)
                {
                    add.IUDQuery("insert into ProductsSizes values('" + id.Rows[0][0].ToString() + "','XLL');");
                }
                ///////////////////////////////////
                if (image.HasFile)
                {
                    foreach (HttpPostedFile postedFile in image.PostedFiles)
                    {
                        string file = Path.GetFileName(postedFile.FileName);
                        postedFile.SaveAs(Server.MapPath("..//..//img//" + file));
                        add.IUDQuery("insert into ProductsImages values('" + id.Rows[0][0].ToString() + "', '../../img/" + file + "');");
                    }
                }
            }

            Response.Redirect("~/Admin/Pages/Products.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["view"] != null)
            {
                MyFunctions editProducts = new MyFunctions();
                DataTable data = new DataTable();

                reviews = editProducts.SelectQuery("select ProductReviewCustomerName, ProductReviewRating, ProductReiew from ProductsReviews where ProductReviewProductID='" + Request.QueryString["view"] + "';");
                images = editProducts.SelectQuery("select ProductImageLink from ProductsImages where ProductImageProductID='" + Request.QueryString["view"] + "';");

                if (!IsPostBack)
                {
                    data = editProducts.SelectQuery("select ProductName, ProductPrice, ProductDescription, ProductCategory, ProductStock from Products where ProductID='" + Request.QueryString["view"] + "';");

                    ProductName.Text = data.Rows[0][0].ToString();
                    ProductPrice.Text = data.Rows[0][1].ToString();
                    ProductDescription.Text = data.Rows[0][2].ToString();
                    ProductCategory.SelectedValue = data.Rows[0][3].ToString();
                    ProductStock.Text = data.Rows[0][4].ToString();

                    data = null;

                    data = editProducts.SelectQuery("select ProductColorName from ProductsColors where ProductColorProductID='" + Request.QueryString["view"] + "';");
                    for (int i = 0; i < data.Rows.Count; ++i)
                    {
                        if (data.Rows[i][0].ToString() == "White")
                        {
                            white.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Black")
                        {
                            black.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Gray")
                        {
                            gray.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Red")
                        {
                            red.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Blue")
                        {
                            blue.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Yellow")
                        {
                            yellow.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Pink")
                        {
                            pink.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Brown")
                        {
                            brown.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Green")
                        {
                            green.Checked = true;
                        }
                        else if (data.Rows[i][0].ToString() == "Purple")
                        {
                            purple.Checked = true;
                        }
                    }

                    data = null;
                    data = editProducts.SelectQuery("select ProductSizeName from ProductsSizes where ProductSizeProductID='" + Request.QueryString["view"] + "';");
                    for (int i = 0; i < data.Rows.Count; ++i)
                    {
                        if (data.Rows[i][0].ToString() == "XS")
                        {
                            xs.Checked = true;
                        }

                        if (data.Rows[i][0].ToString() == "S")
                        {
                            s.Checked = true;
                        }

                        if (data.Rows[i][0].ToString() == "M")
                        {
                            m.Checked = true;
                        }

                        if (data.Rows[i][0].ToString() == "L")
                        {
                            l.Checked = true;
                        }

                        if (data.Rows[i][0].ToString() == "XL")
                        {
                            xl.Checked = true;
                        }

                        if (data.Rows[i][0].ToString() == "XXL")
                        {
                            xxl.Checked = true;
                        }
                    }
                }

            }
        }
    }
}