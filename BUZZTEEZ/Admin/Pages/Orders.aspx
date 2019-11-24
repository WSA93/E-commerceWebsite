<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Admin Master.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Orders
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="card ">
                <div class="card-header">
                    <h4 class="card-title font-weight-bold">Orders</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table tablesorter" id="">
                            <thead class="text-primary">
                                <tr>
                                    <th>Order No.</th>
                                    <th>Customer</th>
                                    <th>Time</th>
                                    <th>Total</th>
                                    <th>Status</th>
                                    <th>Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="orders" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><asp:Label runat="server" Text='<%#Eval("OrderID")%>'></asp:Label></td>
                                            <td><asp:Label runat="server" Text='<%#Eval("UserName")%>'></asp:Label></td>
                                            <td><asp:Label runat="server" Text='<%#Eval("OrderTimeStamp")%>'></asp:Label></td>
                                            <td><asp:Label runat="server" Text='<%#Eval("OrderGrandTotal")%>'></asp:Label></td>
                                            <td><asp:Label runat="server" Text='<%#Eval("OrderStatus")%>'></asp:Label></td>
                                            <td>
                                                <asp:HyperLink Text='<i class="tim-icons icon-paper btn btn-info btn-link btn-icon btn-sm"></i>' id="DetailsLink" runat="server" NavigateUrl='<%#Eval("OrderID","~/Admin/Pages/Order Details.aspx?view={0}")%>'></asp:HyperLink>
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
