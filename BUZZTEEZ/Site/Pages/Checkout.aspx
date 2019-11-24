<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="BUZZTEEZ.Site.Pages.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Checkout
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <!--================Checkout Area =================-->
    <section class="checkout_area section-margin--small">
        <div class="container">
            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-12">
                        <h3>Billing Details</h3>
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="mobile" class="form-control" placeholder="Mobile Number" required></asp:TextBox>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="email" class="form-control" placeholder="E-mail Address"></asp:TextBox>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="address" class="form-control" placeholder="Address" required></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="order_box">
                            <%-- <h2>Your Order</h2>--%>
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
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="cartItems">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:Label runat="server" Text='<%#Eval("CartProductName")%>'></asp:Label>
                                                    
                                                    </td>
                                                    <td>
                                                        PKR<asp:Label runat="server" Text='<%#Eval("CartProductPrice")%>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        
                                                            <asp:TextBox runat="server" Text='<%#Eval("CartProductQuantity")%>' class="form-control"></asp:TextBox>
                                                        
                                                    </td>
                                                    <td>
                                                        
                                                            <asp:Label runat="server" Text='<%#Eval("CartProductColor")%>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        
                                                            <asp:Label runat="server" Text='<%#Eval("CartProductSize")%>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        PKR<asp:Label runat="server" Text='<%#Eval("CartProductTotal")%>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Total: </td>
                                            <td>PKR <asp:Label runat="server" ID="grandTotal"></asp:Label> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                           
                            <div class="text-center">
                                <asp:Button runat="server" ID="saveOrder" class="button button-paypal" OnClick="saveOrder_Click" Text="Complete Order" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--================End Checkout Area =================-->

</asp:Content>
