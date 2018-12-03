using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var member = (Member)Session["UserAdmin"];
        if (member != null)
        {
            nameuser.Text = member.member_fullname;
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notice", "alert('Sign up fail! Username or email or phone exists!')", true);
            Response.Redirect("/Admin/AdminLogin.aspx");
        }
    }

    protected void Logout_Click(Object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("TrangChu.aspx");
    }
}
