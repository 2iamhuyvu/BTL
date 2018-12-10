using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QLContact_ListContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static bool ReplyLienHe(int idLienHe, string EmailLienHe, string SbEmail,string ContentEmail)
    {
        DataUtil dt = new DataUtil();
        dt.ReplyLienHe(idLienHe, EmailLienHe, SbEmail, ContentEmail);
        return dt.ReplyLienHe(idLienHe, EmailLienHe, SbEmail, ContentEmail);
    }
    [WebMethod] public static string XoaLienHe(int idLienHe)
    {
        DataUtil dt = new DataUtil();
        dt.XoaLienHe(idLienHe);
        return "ok";
    }
}