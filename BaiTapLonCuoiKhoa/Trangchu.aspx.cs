using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tranchu : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        var member = (Member)Session["User"];
        if (member != null)
        {
            nameuser.Text = member.member_fullname;
            avatar.Style.Add("display", "block");
            login.Style.Add("display", "none");
        }
        else
        {
        }
        //Huy
        if ((Cart)Session["Cart"] == null)
        {
            Cart CART = new Cart()
            {
                ListFood = new List<OrderDetail>(),
                emailKH = Session["User"] == null ? "" : ((Member)Session["User"]).member_mail,
                tenKH = Session["User"] == null ? "" : ((Member)Session["User"]).member_fullname,
                dienthoaiKH = Session["User"] == null ? "" : ((Member)Session["User"]).member_phone,
                idtable = -1,
                idmember = Session["User"] == null ? -1 : ((Member)Session["User"]).member_id,
                tenBan = "",
            };
            Session["Cart"] = CART;
        }
        //endHuy
    }

    protected void LogOut_Click(Object sender, EventArgs e)
    {
        Session["User"] = null;
        Session["Cart"] = null;
        Response.Redirect("TrangChu.aspx");
    }
    #region trong
    [WebMethod(EnableSession = true)]
    public static string sltb(string ds,string ts,string tr,string lb)
    {
        DataUtil dt = new DataUtil();
        int lb1 = int.Parse(lb);
        //Food food = new Food();
        
        string st= dt.dstbod(ds, ts, tr, lb1);


        return st;
    }
    #endregion

    #region Huy

    [WebMethod(EnableSession = true)]
    public static Food getFoodOrderNow(int idfood)
    {
        DataUtil dt = new DataUtil();
        Food food = new Food();
        food = dt.get1Food(idfood);
        return food;
    }
    [WebMethod(EnableSession = true)]
    [System.Web.Script.Services.ScriptMethod()]
    public static Cart AddToCart(int idfood, int soluong)
    {
        DataUtil dt = new DataUtil();
        Cart cart = (Cart)HttpContext.Current.Session["Cart"];
        List<OrderDetail> list = cart.ListFood;
        foreach (var item in list)
        {
            if (item.foodid == idfood)
            {
                item.quantity += soluong;
                item.thanhtien = (item.food_price - (item.food_price * item.food_sale / 100)) * item.quantity;
                cart.ListFood = list;
                HttpContext.Current.Session["Cart"] = cart;
                return cart;
            }
        }
        Food f = dt.get1Food(idfood);
        OrderDetail od = new OrderDetail()
        {
            foodid = f.food_id,
            food_name = f.food_name,
            food_price = f.food_price,
            food_sale = f.food_sale,
            quantity = soluong,
            food_avatar = f.food_avatar,
            thanhtien = (f.food_price - (f.food_price * f.food_sale / 100)) * soluong,
        };
        list.Add(od);
        cart.ListFood = list;
        HttpContext.Current.Session["Cart"] = cart;
        return cart;
    }
    [WebMethod(EnableSession = true)]
    [System.Web.Script.Services.ScriptMethod()]
    public static Cart ChangeQuantityFood(int idfood, int soluong)
    {
        DataUtil dt = new DataUtil();
        Cart cart = (Cart)HttpContext.Current.Session["Cart"];
        List<OrderDetail> list = cart.ListFood;
        foreach (var item in list)
        {
            if (item.foodid == idfood)
            {
                item.quantity = soluong;
                item.thanhtien = (item.food_price - (item.food_price * item.food_sale / 100)) * item.quantity;
                cart.ListFood = list;
                HttpContext.Current.Session["Cart"] = cart;
            }
        }
        return cart;
    }
    [WebMethod(EnableSession = true)]
    [System.Web.Script.Services.ScriptMethod()]
    public static Cart XoaKkhoiCart(int idfood)
    {
        DataUtil dt = new DataUtil();
        Cart cart = (Cart)HttpContext.Current.Session["Cart"];
        List<OrderDetail> list = cart.ListFood;
        OrderDetail tempf = new OrderDetail();
        foreach (var item in list)
        {
            if (item.foodid == idfood)
            {
                tempf = item;
            }
        }
        list.Remove(tempf);
        cart.ListFood = list;
        HttpContext.Current.Session["Cart"] = cart;
        return cart;
    }
    [WebMethod(EnableSession = true)]
    [System.Web.Script.Services.ScriptMethod()]
    public static Cart changeTableCart(int idtbl)
    {
        DataUtil dt = new DataUtil();
        Cart cart = (Cart)HttpContext.Current.Session["Cart"];
        cart.idtable = idtbl;
        HttpContext.Current.Session["Cart"] = cart;
        return cart;
    }    
    [WebMethod(EnableSession = true)]
    [System.Web.Script.Services.ScriptMethod()]
    public static Cart XacNhanMuaHang(string tenKH, string emailKH, string dienthoaiKH)
    {
        DataUtil dt = new DataUtil();
        Cart cart = (Cart)HttpContext.Current.Session["Cart"];
        OrderTable odtbl = new OrderTable
        {
            ordertable_idtable = cart.idtable ?? -1,
            ordertable_iduser = cart.idmember ?? -1,
            ordertable_status = false,
            ordertable_timeset=TimeSpan.Parse("5:30"),
            dienthoaiKH= dienthoaiKH,
            emailKH=emailKH,
            tenKH=tenKH,
            loaiKH=cart.idmember>0?true:false,
            loaiHD=cart.idtable>0?true:false,            
        };
        int idordertbl = dt.ThemOrderTable(odtbl);
        if (idordertbl > 0)
        {
            foreach(var item in cart.ListFood)
            {
                OrderDetail orderDetail = item;
                orderDetail.ordertableid = idordertbl;
                dt.ThemOrderDetail(orderDetail);
            }
        }
        Cart C = new Cart()
        {
            ListFood = new List<OrderDetail>(),
            emailKH = HttpContext.Current.Session["User"] == null ? "" : ((Member)HttpContext.Current.Session["User"]).member_mail,
            tenKH = HttpContext.Current.Session["User"] == null ? "" : ((Member)HttpContext.Current.Session["User"]).member_fullname,
            dienthoaiKH = HttpContext.Current.Session["User"] == null ? "" : ((Member)HttpContext.Current.Session["User"]).member_phone,
            idtable = -1,
            idmember = HttpContext.Current.Session["User"] == null ? -1 : ((Member)HttpContext.Current.Session["User"]).member_id,
            tenBan = "",
        };
        HttpContext.Current.Session["Cart"] = C;
        return C;
    }
    #endregion
}