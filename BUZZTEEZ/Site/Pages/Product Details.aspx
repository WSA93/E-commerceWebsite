<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Product Details.aspx.cs" Inherits="BUZZTEEZ.Site.Pages.WebForm2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Product Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    <!--================Single Product Area =================-->
    <div class="product_image_area">
        <div class="container">
            <div class="row s_product_inner">
                <div class="col-lg-6">
                    <div class="owl-carousel owl-theme s_Product_carousel">
                        <asp:Repeater ID="images" runat="server">
                            <ItemTemplate>
                                <div class="single-prd-item">
                                    <asp:Image runat="server" class="card-img" Width="555" Height="600" ImageUrl='<%#Eval("ProductImageLink")%>' />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="s_product_text">
                        <h3>
                            <asp:Label runat="server" ID="name"></asp:Label>
                        </h3>
                        <h2>PKR
                            <asp:Label runat="server" ID="price"></asp:Label>
                        </h2>
                        <ul class="list">
                            <li><a class="active" href="#"><span>Category</span> :
                                <asp:Label runat="server" ID="category"></asp:Label></a></li>
                            <li><a href="#"><span>Availibility</span> :
                                <asp:Label runat="server" ID="stock"></asp:Label></a></li>
                        </ul>
                        <p class="mb-2">
                            <asp:Label runat="server" ID="description"></asp:Label>
                        </p>
                        <div class="row mb-3">
                            <div class="col-2">
                                <label>Quantity:</label>
                            </div>
                            <div class="col-3">
                                <asp:TextBox runat="server" ID="quantity" TextMode="Number" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-2">
                                <label>Color:</label>
                            </div>
                            <div class="col-10">
                                <asp:DropDownList runat="server" ID="colors"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-2">
                                <label>Size:</label>
                            </div>
                            <div class="col-10" id="aaa">
                                <asp:DropDownList runat="server" ID="sizes"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row col-12">
                            <asp:Button runat="server" ID="cart" class="button primary-btn" Text="Add To Cart" OnClick="cart_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--================End Single Product Area =================-->


    <!--================Product Description Area =================-->
    <section class="product_description_area">
        <div class="container">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
                        aria-selected="false">Reviews</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row total_rate">
                                <div class="col-6">
                                    <div class="box_total">
                                        <h5>Overall</h5>
                                        <h4>
                                            <asp:Label runat="server" ID="TotalRating"></asp:Label></h4>
                                        <h6>
                                            <asp:Label runat="server" ID="NoOfReviews"></asp:Label></h6>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="rating_list">
                                        <h3>Based on
                                            <asp:Label runat="server" ID="NoOfReviews1"></asp:Label>
                                            Reviews</h3>
                                        <ul class="list">
                                            <li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i>01</a></li>
                                            <li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i>01</a></li>
                                            <li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>01</a></li>
                                            <li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i>01</a></li>
                                            <li><a href="#">1 Star <i class="fa fa-star"></i>01</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="review_list">
                                <asp:Repeater runat="server" ID="productReviews">
                                    <ItemTemplate>
                                        <div class="review_item">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4>
                                                    <asp:Label runat="server" ID="CustomerName"></asp:Label></h4>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                            <p>
                                                <asp:Label runat="server" ID="customerReview"></asp:Label>
                                            </p>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="review_box">
                                <h4>Add a Review</h4>
                                <p>Your Rating:</p>
                                <ul class="list">

                                    <asp:ToolkitScriptManager runat="server" ID="script"></asp:ToolkitScriptManager>
                                    <asp:UpdatePanel runat="server" ID="update">
                                        <ContentTemplate>
                                            <asp:Rating ID="Rating1" runat="server" 
                                                StarCssClass="Star"
                                                FilledStarCssClass="FilledStar"
                                                WaitingStarCssClass="WaitingStar"
                                                EmptyStarCssClass="EmptyStar"></asp:Rating>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </ul>
                                <p>Outstanding</p>
                                <div class="form-contact form-review mt-3">
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="reviewText" TextMode="MultiLine" class="form-control different-control w-100" placeholder="Enter Review"></asp:TextBox>
                                    </div>
                                    <div class="form-group text-center text-md-right mt-3">
                                        <asp:Button runat="server" ID="addToCart" class="button primary-btn" Text="Submit" OnClick="cart_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Product Description Area =================-->

</asp:Content>
