<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Client_ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change password</title>
    <link href="../Assets/css/StyleCustom.css" rel="stylesheet" />
    <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" />
    <base href="../Assets/" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar" style="height: 75px;"<%--style="background: #343a40 !important; position: fixed; width: 100%; margin-bottom: 0px;"--%>>
                <div class="container">
                    <a class="navbar-brand" href="/TrangChu.aspx">EatWell</a>
                    <div class="collapse navbar-collapse" id="site-nav">
                        <ul class="navbar-nav ml-auto">
                            <li id="avatar" runat="server">
                                <div class="user-profile pull-right"  style="margin-top: 35px;">
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
        <div class="col-12 mt-5"  style="background-image: url(/Assets/images/bg_3.jpg); margin: 0 !important; padding: 125px 3rem!important;">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="inputPassword" class="">Password</label>
                        <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" TextMode="Password" />
                        <asp:RequiredFieldValidator ID="repassword" runat="server" ErrorMessage="The field is required" ForeColor="Red" ControlToValidate="txtpassword" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regpassword" runat="server" ErrorMessage="Username in the range of 6 to 15 numbers" ControlToValidate="txtpassword" ValidationExpression=".{6,15}" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="">Confirm Password</label>
                        <asp:TextBox runat="server" ID="txtconfirmpassword" CssClass="form-control" TextMode="Password" />
                        <asp:CompareValidator ID="compassword" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Password not match" ForeColor="Red"></asp:CompareValidator>
                    </div>
                    <asp:Button CssClass="btn btn-primary mt-4 pr-4 pl-4" runat="server" ID="btnUpdate" Text="UPDATE" OnClick="btnUpdate_Click" />
                </div>
            </div>
        </div>
    </form>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
