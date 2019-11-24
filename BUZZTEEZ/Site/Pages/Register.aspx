<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BUZZTEEZ.Site.Pages.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <!--================Login Box Area =================-->
    <section class="login_box_area section-margin">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login_box_img">
                        <div class="hover">
                            <h4>Already have an account?</h4>
                            <a class="button button-account" href="Login.aspx">Login Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login_form_inner register_form_inner">
                        <h3>Create an account</h3>
                        <div class="row login_form" id="register_form">
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="username" class="form-control" placeholder="Username"></asp:TextBox>
                                <asp:Label runat="server" ID="userexist" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="email" TextMode="Email" class="form-control" placeholder="Email Address"></asp:TextBox> 
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="password" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password" class="form-control" placeholder="Confirm Password"></asp:TextBox>
                                <asp:Label runat="server" ID="passmatch" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:Button runat="server" ID="submit" Text="Register" class="button button-register w-100" OnClick="submit_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Login Box Area =================-->

</asp:Content>
