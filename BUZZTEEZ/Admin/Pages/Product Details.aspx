<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Admin Master.Master" AutoEventWireup="true" CodeBehind="Product Details.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Products Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="title">Products Details</h4>
                </div>
                <div class="card-body">
                    <asp:Repeater ID="details" runat="server">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-6">
                                    <label class="title">Product Name</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("ProductName")%>'></asp:Label></p>
                                </div>

                                <div class="col-6">
                                    <label class="title">Product Price</label>
                                    <p class="mt-2">Rs.<span><asp:Label runat="server" Text='<%#Eval("ProductPrice")%>'></asp:Label></span> </p>
                                </div>
                            </div>

                            <div class="row mt-5">
                                <div class="col-6">
                                    <label class="title">Product Category</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("ProductCategory")%>'></asp:Label></p>
                                </div>

                                <div class="col-6">
                                    <label class="title">Product Stock</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("ProductStock")%>'></asp:Label></p>
                                </div>
                            </div>

                            <div class="row mt-5">
                                <div class="col-10">
                                    <label class="title">Product Description</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("ProductDescription")%>'></asp:Label></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                    <div class="row mt-5">
                        <div class="col-12">
                            <label class="title">Available Colors</label>
                        </div>
                        <div class="col-12">
                            <asp:Repeater ID="colors" runat="server">
                                <ItemTemplate>
                                    <i class="mr-2 text-light">
                                        <asp:Label runat="server" Text='<%#Eval("ProductColorName")%>'></asp:Label></i>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>

                    <div class="row mt-5">
                        <div class="col-12">
                            <label class="title">Available Sizes</label>
                        </div>
                        <div class="col-12">
                            <asp:Repeater ID="sizes" runat="server">
                                <ItemTemplate>
                                    <i class="mr-2 text-light">
                                        <asp:Label runat="server" Text='<%#Eval("ProductSizeName")%>'></asp:Label></i>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>

                    <div class="row mt-5">
                        <div class="col-12">
                            <label class="title">Product Pictures</label>
                        </div>
                        <asp:Repeater ID="images" runat="server">
                            <ItemTemplate>
                                <div class="col-3  mt-3">
                                    <asp:Image ID="Image1" runat="server" class="img-fluid" ImageUrl='<%#Eval("ProductImageLink")%>' Style="height: 200px; width: 200px;" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <div class="row mt-5">
                        <div class="col-12 mb-3">
                            <label class="title">Product Reviews</label>
                        </div>
                        <div class="col-12">
                    <div class="table-responsive">
                        <table class="table tablesorter" id="">
                            <thead class="text-primary">
                                <tr>
                                    <th>Customer</th>
                                    <th>Ratings</th>
                                    <th>Review</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="review" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><asp:Label runat="server" Text='<%#Eval("ProductReviewCustomerName")%>'></asp:Label></td>
                                            <td><asp:Label runat="server" Text='<%#Eval("ProductReviewRating")%>'></asp:Label></td>
                                            <td><asp:Label runat="server" Text='<%#Eval("ProductReiew")%>'></asp:Label></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                        </div>    

                    </div>

                </div>
                <div class="card-footer">
                    <asp:Button ID="edit" runat="server" Text="Edit" OnClick="edit_Click" class="btn btn-fill btn-info" />
                    <button type="button" class="btn btn-fill btn-danger" data-toggle="modal" data-target="#exampleModal">
                        Delete
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Alert!</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete this product?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">No</button>
                    <asp:Button ID="delete" runat="server" Text="Yes" OnClick="delete_Click" class="btn btn-fill btn-danger" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
