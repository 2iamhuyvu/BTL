using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QFood_EditFood : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowInfoFood();
        }
    }

    private void ShowInfoFood()
    {
        var id = Request.QueryString["IdFood"];
        if (!string.IsNullOrEmpty(id))
        {
            var food = data.get1Food(Convert.ToInt16(id));
            Session["IdFood"] = id;

            txtFoodID.Text = food.food_id.ToString();
            txtName.Text = food.food_name;
            txtGia.Text = food.food_price.ToString();
            txtKhuyenmai.Text = food.food_sale.ToString();

            //ImageEdit = "03122018_105525_SA_huong duong.jpg";

            ImageEdit.ImageUrl = food.food_avatar;

            //txtAvt.Text = food.food_avatar;
            txtMieuta.Text = food.food_description;

            ddlFoodTypeID.DataSource = data.getListFoodType();
            ddlFoodTypeID.DataTextField = "foodtype_name";
            ddlFoodTypeID.DataValueField = "foodtype_id";
            DataBind();

            ddlFoodTypeID.SelectedValue = food.foodtype_id.ToString();

        }
    }



    protected void btnSua_Click(object sender, EventArgs e)
    {
        try
        {

            int id1 = Convert.ToInt16(Session["IdFood"]);
            var food1 = data.get1Food(id1);

            Food food = new Food();

            food.food_name = txtName.Text;
            food.food_price = double.Parse(txtGia.Text);
            food.food_sale = int.Parse(txtKhuyenmai.Text);

             


            ////food.food_avatar = txtAvt.Text;
            food.food_description = txtMieuta.Text;
            food.foodtype_id = int.Parse(ddlFoodTypeID.SelectedValue.ToString());

            food.food_id = int.Parse(Session["IdFood"].ToString());

            //var food = new Food()
            //{
            //    food_name = txtName.Text,
            //    food_price = double.Parse(txtGia.Text),
            //    food_sale = int.Parse(txtKhuyenmai.Text),
            //    food_avatar = txtAvt.Text,
            //    food_description = txtMieuta.Text,
            //    foodtype_id = Convert.ToInt16(ddlFoodTypeID.SelectedValue.ToString()),
            //    food_id = Convert.ToInt16(Session["IdFood"].ToString())
            //};
            data.EditFood(food);

            msg.Text = "Update success!";
            msg.ForeColor = System.Drawing.Color.Green;
            ShowInfoFood();
            ShowInfoFood();
        }
        catch (Exception ex)
        {
            msg.Text = "Update Fail. Erorr: " + ex.Message + ". Let try!";
            msg.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnLammoi_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtGia.Text = "";
        txtKhuyenmai.Text = "";
        txtMieuta.Text = "";
    }
}
