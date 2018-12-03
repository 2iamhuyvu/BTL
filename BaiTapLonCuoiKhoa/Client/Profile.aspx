<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Client_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang cá nhân</title>
    <link href="../Assets/css/profile.css" rel="stylesheet" />
    <link href="../Assets/css/StyleCustom.css" rel="stylesheet" />
    <base href="../Assets/" />

</head>
<body>
    <form id="form1" runat="server" action="/Client/Profile.aspx">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar" <%--style="background: #343a40 !important; position: fixed; width: 100%; margin-bottom: 0px;"--%>>
                <div class="container">
                    <a class="navbar-brand" href="/TrangChu.aspx">EatWell</a>
                    <div class="collapse navbar-collapse" id="site-nav">
                        <ul class="navbar-nav ml-auto">
                            <li id="avatar" runat="server">
                                <div class="user-profile pull-right">
                                    <img class="avatar user-thumb" src="/Assets/AssetsAdmin/images/author/avatar.png" alt="avatar" />
                                    <h4 class="user-name dropdown-toggle nav-link" data-toggle="dropdown">
                                        <asp:Label runat="server" ID="nameuser"></asp:Label>
                                        <i class="fa fa-angle-down"></i></h4>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="/Client/Profile.aspx">Profile</a>
                                        <a class="dropdown-item" href="/Client/ChangePassword.aspx">Change password</a>
                                        <asp:LinkButton ID="Logout" runat="server" CausesValidation="false" OnClick="LogOut_Click" Text="Log out" CssClass="dropdown-item" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div style="background-image: url(/Assets/images/bg_3.jpg); height: 576px;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" style="margin-top: 100px;">


                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h3 class="panel-title">Profile</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-3 col-lg-3 " align="center">
                                        <img alt="User Pic" src="../Assets/images/avatar.jpg" class="img-circle img-responsive" style="width: 162px; height: 125px" />
                                    </div>
                                    <div class=" col-md-9 col-lg-9 ">
                                        <table class="table table-user-information">
                                            <tbody>
                                                <tr>
                                                    <td>Full name</td>
                                                    <td>
                                                        <asp:Label runat="server" ID="lbfullname"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td>Username</td>
                                                    <td>
                                                        <asp:Label runat="server" ID="lbusername"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td>Phone</td>
                                                    <td>
                                                        <asp:Label runat="server" ID="lbphone"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td>Email</td>
                                                    <td><a href="" runat="server" id="amail">
                                                        <asp:Label runat="server" ID="lbmail"></asp:Label></a></td>
                                                </tr>

                                            </tbody>
                                        </table>

                                        <a href="/Client/EditProfile.aspx" class="btn btn-primary">Edit profile</a>
                                        <a href="/Client/ChangePassword.aspx" class="btn btn-primary">Change password</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
