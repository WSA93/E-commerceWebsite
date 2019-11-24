<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Admin Master.Master" AutoEventWireup="true" CodeBehind="Order Details.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Order Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="title">Order Details</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive mt-2">
                        <table class="table tablesorter" id="">
                            <thead class="text-primary">
                                <tr>
                                    <th>ID</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Color</th>
                                    <th>Size</th>
                                    <th>Total</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="productdetails" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductID")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductName")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("ProductPrice")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("OrderedProductQuantity")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("OrderedProductColor")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("OrderedProductSize")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("OrderedProductTotal")%>'></asp:Label></td>
                                            <td>
                                                <asp:HyperLink Text='<i class="tim-icons icon-pencil btn btn-info btn-link btn-icon btn-sm"></i>' ID="DetailsLink" runat="server" NavigateUrl='<%#Eval("ProductID","~/Admin/Pages/Edit Order Details.aspx?product={0}&&order="+Request.QueryString["view"])%>'></asp:HyperLink></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>

                                <tr>
                                    <td colspan="7">
                                        <label class="font-weight-bold text-info">Grand Total</label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="grandTotal" class="font-weight-bold text-info"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <asp:Repeater ID="orderdetails" runat="server">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-4">
                                    <label class="title">Order Status</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("OrderStatus")%>'></asp:Label>
                                    </p>
                                </div>

                                <div class="col-4">
                                    <label class="title">Orderd On</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("OrderTimeStamp")%>'></asp:Label>
                                    </p>
                                </div>

                                <div class="col-4">
                                    <label class="title">Payment Method</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("OrderPaymentMethod")%>'></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                    <asp:Repeater ID="customerinfo" runat="server">
                        <ItemTemplate>
                            <div class="row mt-4">
                                <div class="col-4">
                                    <label class="title">Customer Name</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("UserName")%>'></asp:Label>
                                    </p>
                                </div>

                                <div class="col-2">
                                    <label class="title">Phone No.</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("UserPhone")%>'></asp:Label>
                                    </p>
                                </div>

                                <div class="col-6">
                                    <label class="title">Address</label>
                                    <p class="mt-2">
                                        <asp:Label runat="server" Text='<%#Eval("UserAddress")%>'></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                </div>
                <div class="card-footer">
                    <button type="button" class="btn btn-fill btn-info" data-toggle="modal" data-target="#exampleModal">
                        Change Status
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
                    <h3 class="modal-title" id="exampleModalLabel">Change Order Status</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Order Status</label>
                        <asp:DropDownList ID="orderstatus" runat="server" class="form-control" ForeColor="#525f7f">
                            <asp:ListItem>NEW</asp:ListItem>
                            <asp:ListItem>PENDING</asp:ListItem>
                            <asp:ListItem>CONFIRMED</asp:ListItem>
                            <asp:ListItem>PROCESSING</asp:ListItem>
                            <asp:ListItem>DISPACHED</asp:ListItem>
                            <asp:ListItem>RETURNED</asp:ListItem>
                            <asp:ListItem>COMPLETED</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="status" runat="server" Text="Change" OnClick="status_Click" class="btn btn-fill btn-primary" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
