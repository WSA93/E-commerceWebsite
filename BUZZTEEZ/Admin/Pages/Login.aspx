<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BUZZTEEZ.Admin.Pages.Login" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>Login</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!-- Icons -->
    <link href="../assets/css/nucleo.css" rel="stylesheet" />
    <link href="../assets/css/all.min.css" rel="stylesheet" />
    <!-- Argon CSS -->
    <link href="../assets/css/argon.css" rel="stylesheet" />
</head>

<body class="bg-default">
    <div class="main-content">
        <!-- Header -->
        <div class="header bg-gradient-primary py-6 py-lg-7">

            <div class="separator separator-bottom separator-skew zindex-100">
                <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
                    <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
                </svg>
            </div>
        </div>
        <!-- Page content -->
        <div class="container mt--8 pb-5">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-7">
                    <div class="card bg-secondary shadow border-0">
                        <div class="card-header bg-transparent pb-5">
                            <h2 class="text-center text-blue mt-2">Login</h2>
                        </div>
                        <div class="card-body px-lg-5 py-lg-5">
                            <form runat="server">
                                <div class="form-group mb-3">
                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                        </div>
                                        <asp:TextBox ID="username" runat="server"  Required class="form-control" placeholder="User Name" autofocus></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                        </div>
                                        <asp:TextBox ID="password" runat="server" TextMode="Password" Required class="form-control" placeholder="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:Label runat="server" ID="failed" Class="text-danger"></asp:Label>
                                <div class="text-center">
                                    <asp:Button ID="LoginButton" runat="server" class="btn btn-primary my-4" Text="Login" OnClick="LoginButton_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Argon Scripts -->
    <!-- Core -->
    <script src="../assets/js/core/jquery.min.js"></script>
    <script src="../assets/js/core/bootstrap.bundle.min.js"></script>
    <!-- Argon JS -->
    <script src="../assets/js/argon.js"></script>
</body>

</html>
