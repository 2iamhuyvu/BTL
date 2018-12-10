using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class Admin_QFood_ListFood : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    List<Food> getListMembers = data.getListFood();
        //}
    }

    [WebMethod]
    public static string XoaFood(int idFood)
    {
        DataUtil data = new DataUtil();
        data.DeleteFood(idFood);
        return "Xóa thành công !";
    }
}