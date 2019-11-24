<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Admin Master.Master" AutoEventWireup="true" CodeBehind="Admin Dashboard.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.Admin_Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    Dashboard
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

        <div class="row pb-4">
          <div class="col-lg-4">
            <div class="card pb-2 border border-danger ">
              <div class="card-header">
                <h5>New Orders</h5>
                <h3 class="card-title"><i class="tim-icons icon-bell-55 text-danger"></i> <asp:Label runat="server" ID="newOrder"></asp:Label></h3>
              </div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="card pb-2 border border-info ">
              <div class="card-header">
                <h5>Pending Orders</h5>
                <h3 class="card-title"><i class="tim-icons icon-bell-55 text-info"></i> <asp:Label runat="server" ID="pending"></asp:Label></h3>
              </div>
            </div>
          </div>
            
          <div class="col-lg-4">
            <div class="card pb-2 border border-light">
              <div class="card-header">
                <h5 class="">Confirmed Orders</h5>
                <h3 class="card-title"><i class="tim-icons icon-bell-55 text-light"></i> <asp:Label runat="server" ID="confirm"></asp:Label></h3>
              </div>
            </div>
          </div>  
        </div>
</asp:Content>
