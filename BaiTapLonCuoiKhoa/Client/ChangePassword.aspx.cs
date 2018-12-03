using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var member = (Member)Session["User"];
        if (member == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notice", "alert('Please login first!')", true);
            Response.Redirect("/Client/Login.aspx");
        }
        else
        {
            nameuser.Text = member.member_fullname;
            //amail.HRef = "mailto:" + member.member_mail;
            //lbfullname.Text = member.member_fullname;
            //lbmail.Text = member.member_mail;
            //lbphone.Text = member.member_phone;
            //lbusername.Text = member.member_username;
        }
    }
    protected void LogOut_Click(Object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("/TrangChu.aspx");
    }
}