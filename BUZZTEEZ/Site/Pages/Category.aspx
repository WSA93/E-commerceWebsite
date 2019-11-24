<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="BUZZTEEZ.Site.Pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Category
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <!-- ================ start banner area ================= -->
    <section class="blog-banner-area" id="category">
        <div class="container h-100">
            <div class="blog-banner">
                <div class="text-center">
                    <h1>
                        <asp:Label runat="server" ID="headingtext"></asp:Label>
                    </h1>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ end banner area ================= -->


    <!-- ================ category section start ================= -->
    <section class="section-margin--small mb-5">
        <div class="container">
            <div class="row">
                <%--  <div class="col-xl-3 col-lg-4 col-md-5">
                    <div class="sidebar-categories">
                        <div class="head">Browse Categories</div>
                        <ul class="main-categories">
                            <li class="common-filter">
                                    <ul>
                                        <li class="filter-list">
                                            <input class="pixel-radio" type="radio" id="men" name="brand"><label for="men">Men<span> (3600)</span></label></li>
                                        <li class="filter-list">
                                            <input class="pixel-radio" type="radio" id="women" name="brand"><label for="women">Women<span> (3600)</span></label></li>
                                        <li class="filter-list">
                                            <input class="pixel-radio" type="radio" id="accessories" name="brand"><label for="accessories">Accessories<span> (3600)</span></label></li>
                                        <li class="filter-list">
                                            <input class="pixel-radio" type="radio" id="footwear" name="brand"><label for="footwear">Footwear<span> (3600)</span></label></li>
                                        <li class="filter-list">
                                            <input class="pixel-radio" type="radio" id="bayItem" name="brand"><label for="bayItem">Bay item<span> (3600)</span></label></li>
                                        <li class="filter-list">
                                            <input class="pixel-radio" type="radio" id="electronics" name="brand"><label for="electronics">Electronics<span> (3600)</span></label></li>
                                        <li class="filter-list">
                                            <input class="pixel-radio" type="radio" id="food" name="brand"><label for="food">Food<span> (3600)</span></label></li>
                                    </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="sidebar-filter">
                        <div class="top-filter-head">Product Filters</div>
                        <div class="common-filter">
                            <div class="head">Brands</div>
                           
                                <ul>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
                                </ul>
                            
                        </div>
                        <div class="common-filter">
                            <div class="head">Color</div>
                            
                                <ul>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black
                      Leather<span>(29)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black
                      with red<span>(19)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
                                    <li class="filter-list">
                                        <input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li>
                                </ul>
                            
                        </div>
                        <div class="common-filter">
                            <div class="head">Price</div>
                            <div class="price-range-area">
                                <div id="price-range"></div>
                                <div class="value-wrapper d-flex">
                                    <div class="price">Price:</div>
                                    <span>$</span>
                                    <div id="lower-value"></div>
                                    <div class="to">to</div>
                                    <span>$</span>
                                    <div id="upper-value"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <div class="col-12">
                    <!-- Start Filter Bar -->
                    <%--    <div class="filter-bar d-flex flex-wrap align-items-center">
                        <div class="sorting">
                            <select>
                                <option value="1">Default sorting</option>
                                <option value="1">Default sorting</option>
                                <option value="1">Default sorting</option>
                            </select>
                        </div>
                        <div class="sorting mr-auto">
                            <select>
                                <option value="1">Show 12</option>
                                <option value="1">Show 12</option>
                                <option value="1">Show 12</option>
                            </select>
                        </div>
                        <div>
                            <div class="input-group filter-bar-search">
                                <input type="text" placeholder="Search">
                                <div class="input-group-append">
                                    <button type="button"><i class="ti-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <!-- End Filter Bar -->
                    <!-- Start Best Seller -->
                    <section class="lattest-product-area pb-40 category-list">
                        <div class="row">
                            <asp:Repeater ID="card" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-3 col-md-4 col-sm-6 ">
                                        <div class="card text-center card-product">
                                            <div class="card-product__img">
                                                <asp:Image ID="Image1" runat="server" class="card-img shadow" Width="225" Height="225" ImageUrl='<%#Eval("ProductImageLink")%>' />
                                                <ul class="card-product__imgOverlay">
                                                    <li>
                                                        <asp:HyperLink Text='<li><button><i class="ti-search"></i></button></li>' runat="server" NavigateUrl='<%#Eval("ProductID","~/Site/Pages/Product Details.aspx?product={0}")%>'></asp:HyperLink>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="card-body">
                                                <p>
                                                    <asp:Label runat="server" Text='<%#Eval("ProductCategory")%>'></asp:Label>
                                                </p>
                                                <h4 class="card-product__title">
                                                    <asp:HyperLink Text='<%#Eval("ProductName")%>' runat="server" class="nav-link" NavigateUrl='<%#Eval("ProductID","~/Site/Pages/Product Details.aspx?product={0}")%>'></asp:HyperLink>
                                                </h4>
                                                <p class="card-product__price">
                                                    PKR
                                                    <asp:Label runat="server" Text='<%#Eval("ProductPrice")%>'></asp:Label>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </section>
                    <!-- End Best Seller -->
                </div>
            </div>
        </div>
    </section>
    <!-- ================ category section end ================= -->


</asp:Content>
