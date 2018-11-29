using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QLHoaDon_OrderPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static string ThanhToan(int idodtbl)
    {
        DataUtil dt = new DataUtil();
        dt.ThanhToanOrderTbl(idodtbl);
        return "Thanh toán thành công";
    }
}