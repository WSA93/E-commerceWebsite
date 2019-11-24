<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BUZZTEEZ.Site.Pages.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    
    <!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>New to our website?</h4>
							<a class="button button-account" href="Register.aspx">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
						<div class="row login_form" id="contactForm" >
							<div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="username" class="form-control" placeholder="Username"></asp:TextBox>
							</div>
							<div class="col-md-12 form-group">
                                <asp:TextBox runat="server" ID="password" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>
							</div>
							<div class="col-md-12 form-group">
                                <asp:Button runat="server" ID="login" Text="Login" class="button button-login w-100" OnClick="login_Click"/>
							    <asp:Label runat="server" ID="failed" CssClass="text-danger"></asp:Label>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

</asp:Content>
