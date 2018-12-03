using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_EditProfile : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
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
            txtemail.Text = member.member_mail;
            txtfullname.Text = member.member_fullname;
            txtusername.Text = member.member_username;
            txtphone.Text = member.member_phone;

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

            var user = new Member()
            {
                member_fullname = txtfullname.Text,
                member_mail = txtemail.Text,
                member_phone = txtphone.Text,
                //member_status = Convert.ToInt16(ddlstatus.SelectedValue.ToString()), ///Active
                //member_type = Convert.ToInt16(ddltype.SelectedValue.ToString()),
            };
            data.UpdateUser(user);
            msg.Text = "Update success!";
            msg.ForeColor = System.Drawing.Color.Green;
            //ShowInfoUser();
        }
        catch (Exception ex)
        {
            msg.Text = "Update Fail. Erorr: " + ex.Message + ". Let try!";
            msg.ForeColor = System.Drawing.Color.Red;
        }
    }
}