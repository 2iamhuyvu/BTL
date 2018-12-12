<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Profile.master" AutoEventWireup="true" CodeFile="ListOrderProfile.aspx.cs" Inherits="Client_ListOrderProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tileProfile" runat="Server">
    DDHT || List orders
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentProfile" runat="Server">
    <div style="width: 100%; background: #F3F8FB;">
        <div class="container">
            <div class="row">
                <table class="table table-bordered table-hover table-striped" style="margin-top: 20px;">
                    <tr>
                        <th>#</th>
                        <th>Mã hóa đơn</th>
                        <th>Tên khách hàng</th>
                        <th>Email khách hàng</th>
                        <th>Điện thoại khách hàng</th>
                        <%--<th>Loại khách khách hàng</th>
            <th>Loại hóa đơn</th>--%>
                        <th>Tổng tiền (vnđ)</th>
                        <th>Thời gian</th>
                        <th>Tình trạng</th>
                        <th></th>
                    </tr>
                    <tbody id="DSHoaDon">
                        <%
                            var list = new DataUtil().GetListOrderVM();
                            var i = 1;
                            foreach (var item in list)
                            {
                                Response.Write("<tr>");
                                Response.Write("<td>" + i + "</td>");
                                Response.Write("<td><a title='Xem hóa đơn' style='display:block' href='javascript:void(0)' onclick='ModalDetailTable(" + item.ordertable_id + ")'>" + item.ordertable_id + "</a></td>");
                                Response.Write("<td>" + item.tenKH + "</td>");
                                Response.Write("<td>" + item.emailKH + "</td>");
                                Response.Write("<td>" + item.dienthoaiKH + "</td>");
                                //Response.Write("<td>" + (item.loaiKH==true? "Có tài khoản":"Không có tài khoản" )+ "</td>");
                                //Response.Write("<td>" + (item.loaiHD==true? "Hóa đơn theo bàn":"Hóa đơn KH online" )+ "</td>");
                                Response.Write("<td>" + item.TotalMoney + "</td>");
                                Response.Write("<td>" + item.ordertable_dateset.ToString("dd/MM/yyyy") + "</td>");
                                if (item.ordertable_status ?? false)
                                {
                                    Response.Write("<td>Đã thanh toán</td>");
                                }
                                else
                                {
                                    Response.Write("<td><button onclick='Thanhtoan(" + item.ordertable_id + ")' class='btn btn-sm' type=button' style='background:#ffc107;padding:5px 10px'>Thanh toán</button></td>");
                                }
                                Response.Write("<td>" +
                                                    "<a title='Xem hóa đơn' class='' style='display:block;padding:5px 10px;' href='javascript:void(0)' onclick='ModalDetailTable(" + item.ordertable_id + ")'>" +
                                                    "<i class='fa fa-eye fa-lg'></i>" +
                                                    "</a>" +
                                                "</td>");
                                Response.Write("</tr>");
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</asp:Content>

