
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Admin Master.Master" AutoEventWireup="true" CodeBehind="Add Products.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    Add Products
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="title">Add Products</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6 pr-md-1">
                            <div class="form-group">
                                <label>Product Name</label>
                                <asp:TextBox ID="ProductName" runat="server" class="form-control" ForeColor="#999999" Required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6 pl-md-1">
                            <div class="form-group">
                                <label>Product Price</label>
                                <asp:TextBox ID="ProductPrice" runat="server" class="form-control" ForeColor="#999999" Required></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6 pr-md-1">
                            <div class="form-group">
                                <label>Category</label>
                                <asp:DropDownList ID="ProductCategory" runat="server" class="form-control" ForeColor="#999999">
                                    <asp:ListItem>Purses</asp:ListItem>
                                    <asp:ListItem>Shirts</asp:ListItem>
                                    <asp:ListItem>Watches</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6 pl-md-1">
                            <div class="form-group">
                                <label>Stock</label>
                                <asp:TextBox ID="ProductStock" runat="server" class="form-control" ForeColor="#999999" Required></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="ProductDescription" runat="server" TextMode="MultiLine" class="form-control" ForeColor="#999999" Required></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <label class="container">Available Colors</label>
                        <div class="col-12">
                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="white" runat="server" value="White"></asp:CheckBox>
                                    White
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="black" runat="server"></asp:CheckBox>
                                    Black
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="gray" runat="server"></asp:CheckBox>
                                    Gray
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="red" runat="server"></asp:CheckBox>
                                    Red
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="blue" runat="server"></asp:CheckBox>
                                    Blue
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="yellow" runat="server"></asp:CheckBox>
                                    Yellow
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="pink" runat="server"></asp:CheckBox>
                                    Pink
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="brown" runat="server"></asp:CheckBox>
                                    Brown
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="green" runat="server"></asp:CheckBox>
                                    Green
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="purple" runat="server"></asp:CheckBox>
                                    Purple
                            <span class="form-check-sign"></span>
                                </label>
                            </div>
                        </div>
                    </div>

                    
                    <div class="row mt-4">
                        <label class="container">Available Sizes</label>
                        <div class="col-12">
                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="xs" runat="server"></asp:CheckBox>
                                    XS
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="s" runat="server"></asp:CheckBox>
                                    S
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="m" runat="server"></asp:CheckBox>
                                    M
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="l" runat="server"></asp:CheckBox>
                                    L
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="xl" runat="server"></asp:CheckBox>
                                    XL
                            <span class="form-check-sign"></span>
                                </label>
                            </div>

                            <div class="form-check for form-check-inline">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="xxl" runat="server"></asp:CheckBox>
                                    XXL
                            <span class="form-check-sign"></span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-4">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Upload Pictures <i class="tim-icons icon-upload btn btn-info btn-link btn-icon btn-sm"></i> <br /> 
                                    Hint: Hold cltr to upload multiple pictures
                                </label>
                                <asp:FileUpload ID="image" runat="server" AllowMultiple="true" class="form-control-file" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" class="btn btn-fill btn-primary" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
