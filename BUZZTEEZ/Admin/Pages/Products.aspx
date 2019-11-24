<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Admin Master.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Products
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="card ">
                <div class="card-header">
                    <h4 class="card-title font-weight-bold">Products</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table tablesorter" id="">
                            <thead class="text-primary">
                                <tr>
                                    <th>ID</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Stock</th>
                                    <th>Category</th>
                                    <th>Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="products" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductID")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductName")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductPrice")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductStock")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductCategory")%>'></asp:Label></td>
                                            <td>
                                                <asp:HyperLink Text='<i class="tim-icons icon-paper btn btn-info btn-link btn-icon btn-sm"></i>' id="DetailsLink" runat="server" NavigateUrl='<%#Eval("ProductID","~/Admin/Pages/Product Details.aspx?view={0}")%>'></asp:HyperLink>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
