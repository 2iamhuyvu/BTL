﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Client_EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update profile</title>
    <%--<link href="../Assets/css/profile.css" rel="stylesheet" />--%>
    <link href="../Assets/css/StyleCustom.css" rel="stylesheet" />
    <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" />
    <base href="../Assets/" />
</head>
<body>
    <form id="form1" runat="server" action="/Client/EditProfile.aspx">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar" style="height: 75px;" <%--style="background: #343a40 !important; position: fixed; width: 100%; margin-bottom: 0px;"--%>>
                <div class="container">
                    <a class="navbar-brand" href="/TrangChu.aspx">EatWell</a>
                    <div class="collapse navbar-collapse" id="site-nav">
                        <ul class="navbar-nav ml-auto">
                            <li id="avatar" runat="server">
                                <div class="user-profile pull-right" style="margin-top: 35px;">
                                    <asp:Image runat="server" CssClass="avatar user-thumb" ID="avatarImageTop" />
                                    <%--<img class="avatar user-thumb" src="/Assets/AssetsAdmin/images/author/avatar.png" alt="avatar" />--%>
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
        <div class="col-12 mt-5" style="background-image: url(/Assets/images/bg_3.jpg); margin: 0 !important; padding: 3rem!important;">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Update profile </h4>
                    <asp:Label ID="msg" runat="server" />
                    <div class="form-group">
                        <label for="example-search-input" class="col-form-label">
                            User name
                            <label style="color: red">(*)</label></label>
                        <asp:TextBox runat="server" ID="txtusername" placeholder="Example: duongtiendat" CssClass="form-control" ReadOnly="true" />
                    </div>
                    <div class="form-group">
                        <label for="example-text-input" class="col-form-label">
                            Full name
                            <label style="color: red">(*)</label></label>
                        <asp:TextBox runat="server" ID="txtfullname" placeholder="Example: Dương Tiến Đạt" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="refullname" runat="server" ErrorMessage="The field is required" ControlToValidate="txtfullname" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="example-email-input" class="col-form-label">
                            Email
                            <label style="color: red">(*)</label></label>
                        <asp:TextBox runat="server" ID="txtemail" placeholder="Example: name@example.com" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="reemail" runat="server" ErrorMessage="The field is required" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="regemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Wrong format" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="example-tel-input" class="col-form-label">
                            Telephone
                            <label style="color: red">(*)</label></label>
                        <asp:TextBox runat="server" ID="txtphone" placeholder="Example: 0336515294" CssClass="form-control" TextMode="Number" />
                        <asp:RegularExpressionValidator ID="regphone" runat="server" ErrorMessage="Phone in the range of 9 to 11 numbers" Display="Dynamic" ControlToValidate="txtphone" ForeColor="Red" ValidationExpression=".{9,11}" />
                        <asp:RequiredFieldValidator ID="rephone" runat="server" ErrorMessage="The field is required" Display="Dynamic" ControlToValidate="txtphone" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="example-tel-input" class="col-form-label">
                            Avatar
                            <%--<label style="color: red">(*)</label>--%>
                        </label>
                        <div class="avatarDiv">
                            <input id="oFile" type="file" runat="server" name="oFile" />
                            <img src="" alt="Alternate Text" id="avatarUpdate" runat="server" class="avatarCss"/>
                        </div>
                    </div>
                    <asp:Button CssClass="btn btn-primary mt-4 pr-4 pl-4" runat="server" ID="btnUpdate" Text="UPDATE" OnClick="btnUpdate_Click" />
                </div>
            </div>
        </div>
    </form>
    <script src="../Client/js/jquery.min.js"></script>
    <script src="../Client/js/popper.min.js"></script>
    <script src="../Client/js/bootstrap.min.js"></script>
</body>
</html>
