using Final_Project.Controller;
using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project.Views
{
    public partial class OrderSuplementPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GV_SuplementData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Order")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                MsUser user = (MsUser)Session["User"];
                string suplementName = GV_SuplementData.Rows[rowIndex].Cells[0].Text;
                int quantitiy = Convert.ToInt32(GV_SuplementData.Rows[rowIndex].Cells[4]);

                if (quantitiy < 0) {
                    Lbl_MsgEror.Text = "quantity must be greather than 0";
                }
                String status = CartController.AddSupplementToCart(user,suplementName,quantitiy);

                if (status == "success")
                {
                    Response.Redirect("~/Views/CartPage.aspx");
                }
                else if (status == "fail") {
                    Lbl_MsgEror.Text = "Failed to add item to cart";
                }

            }
        }
    }
}