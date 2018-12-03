using Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_ChangePassword : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            var user = (Member)Session["User"];
            if (user == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notice", "alert('Please login first!')", true);
                Response.Redirect("/Client/Login.aspx");
            }
            else
            {
                var member = data.GetUser(user.member_id);
                nameuser.Text = member.member_fullname;
                avatarImageTop.Attributes["src"] = member.member_avatar;
            }
        }
        else
        {
            msg.Text = "";
        }
    }
    protected void LogOut_Click(Object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("/TrangChu.aspx");
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            var member = (Member)Session["User"];
            var user = new Member()
            {
                member_id = member.member_id,
                member_password = Encryptor.MD5Hash(txtpassword.Text)
            };
            data.UpdatePassUser(user);
            msg.Text = "Update success!";
            msg.ForeColor = System.Drawing.Color.Green;
        }
        catch (Exception ex)
        {
            msg.Text = "Update Fail. Erorr: " + ex.Message + ". Let try!";
            msg.ForeColor = System.Drawing.Color.Red;
        }
    }
}