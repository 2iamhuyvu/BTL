using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QlMembers_Profile : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var member = (Member)Session["UserAdmin"];
            amail.HRef = "mailto:" + member.member_mail;
            lbfullname.Text = member.member_fullname;
            lbmail.Text = member.member_mail;
            lbphone.Text = member.member_phone;
            lbusername.Text = member.member_username;
            avatarImage.Attributes["src"] = member.member_avatar;
        }
    }
}