using Final_Project.Models;
using Final_Project.Repository;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project.Views
{
    public partial class CartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            MsUser user = (MsUser)Session["User"];
            List<MsCart> carts = CartRepository.GetCartByUserId(user.UserID);

            if (carts != null) {
                GV_Cart.DataSource = carts;
                GV_Cart.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Btn_Clear_Click(object sender, EventArgs e)
        {
            MsUser user = (MsUser)Session["user"];
            CartRepository.ClearCart(user.UserID);
        }

        protected void Btn_CheckOut_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/ OrderSuplementPage.aspx");
        }
    }
}