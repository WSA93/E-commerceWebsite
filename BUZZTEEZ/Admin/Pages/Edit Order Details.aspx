<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Admin Master.Master" AutoEventWireup="true" CodeBehind="Edit Order Details.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Edit Order Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="title">Edit Order</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                                <div class="col-6">
                                    <label class="title">Product ID</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" ID="productid"></asp:Label></p>
                                </div>

                                <div class="col-6">
                                    <label class="title">Product Name</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" ID="productname"></asp:Label></p>
                                </div>
                            </div>
                    <div class="row mt-3">
                        <div class="col-md-4 pr-md-1">
                            <div class="form-group">
                                <label>Quantity</label>
                                <asp:TextBox ID="quantity" runat="server" class="form-control" TextMode="Number" Required ForeColor="#999999"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4 pl-md-1">
                            <div class="form-group">
                                <label>Color</label>
                                <asp:DropDownList ID="color" runat="server" class="form-control" ForeColor="#999999">
                                    <asp:ListItem>White</asp:ListItem>
                                    <asp:ListItem>Black</asp:ListItem>
                                    <asp:ListItem>Gray</asp:ListItem>
                                    <asp:ListItem>Red</asp:ListItem>
                                    <asp:ListItem>Blue</asp:ListItem>
                                    <asp:ListItem>Yellow</asp:ListItem>
                                    <asp:ListItem>Pink</asp:ListItem>
                                    <asp:ListItem>Brown</asp:ListItem>
                                    <asp:ListItem>Green</asp:ListItem>
                                    <asp:ListItem>Purple</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4 pl-md-1">
                            <div class="form-group">
                                <label>Size</label>
                                <asp:DropDownList ID="size" runat="server" class="form-control" ForeColor="#999999">
                                    <asp:ListItem>XS</asp:ListItem>
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>L</asp:ListItem>
                                    <asp:ListItem>XL</asp:ListItem>
                                    <asp:ListItem>XXL</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="saveOrder" runat="server" Text="Save" OnClick="saveOrder_Click" class="btn btn-fill btn-primary" />
                </div>
                <asp:Label runat="server" ID="test"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
