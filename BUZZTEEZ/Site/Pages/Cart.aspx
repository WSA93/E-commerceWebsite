<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BUZZTEEZ.Site.Pages.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Product</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Color</th>
                                <th scope="col">Size</th>
                                <th scope="col">Total</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody>

                            <asp:Repeater runat="server" ID="cartItems">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <div class="media">
                                                <div class="d-flex">
                                                    <asp:Image ID="Image1" runat="server" class="card-img" Width="150" Height="100" ImageUrl='<%#Eval("CartProductImage")%>' />
                                                </div>
                                                <div class="media-body">
                                                    <p>
                                                        <asp:Label runat="server" Text='<%#Eval("CartProductName")%>'></asp:Label></p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <h5>PKR<asp:Label runat="server" Text='<%#Eval("CartProductPrice")%>'></asp:Label></h5>
                                        </td>
                                        <td>
                                           
                                                <asp:TextBox runat="server" Text='<%#Eval("CartProductQuantity")%>' class="form-control"></asp:TextBox>
                                           
                                        </td>
                                        <td>
                                            <h5>
                                                <asp:Label runat="server" Text='<%#Eval("CartProductColor")%>'></asp:Label></h5>
                                        </td>
                                        <td>
                                            <h5>
                                                <asp:Label runat="server" Text='<%#Eval("CartProductSize")%>'></asp:Label></h5>
                                        </td>
                                        <td>
                                            <h5>PKR
                                                <asp:Label runat="server" Text='<%#Eval("CartProductTotal")%>'></asp:Label></h5>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>

                            <tr class="bottom_button">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <div class="cupon_text d-flex align-items-center">
                                        <input type="text" placeholder="Coupon Code">
                                        <a class="primary-btn" href="#">Apply</a>
                                        <a class="button">Have a Coupon?</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <h5>Total</h5>
                                </td>
                                <td>
                                    <h5>PKR<asp:Label runat="server" ID="grandTotal"></asp:Label></h5>
                                </td>
                            </tr>

                            <tr class="out_button_area">
                                <td class="d-none-l"></td>
                                <td class=""></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <a class="primary-btn ml-2" href="Checkout.aspx">Proceed to checkout</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->

</asp:Content>
