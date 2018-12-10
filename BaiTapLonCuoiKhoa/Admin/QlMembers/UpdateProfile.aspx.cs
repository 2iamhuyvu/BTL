using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QlMembers_UpdateProfile : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            //var member = (Member)Session["UserAdmin"];
            //txtemail.Text = member.member_mail;
            //txtfullname.Text = member.member_fullname;
            //txtusername.Text = member.member_username;
            //txtphone.Text = member.member_phone;
            //avatarUpdate.Attributes["src"] = member.member_avatar;
        //}
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }
}