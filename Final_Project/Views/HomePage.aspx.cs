using Final_Project.Factory;
using Final_Project.Models;
using Final_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project.Views
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MsUser user = (MsUser)Session["User"];

          
            if (user != null ) {

                Lbl_Role.Text = user.UserRole;

                if (user.UserRole == "Admin")
                {

                    List<MsUser> customers = UserRepository.GetAllCustomer();

                    if (customers != null)
                    {
                        GV_CustomerData.DataSource = customers;
                        GV_CustomerData.DataBind();
                    }
                }
            }
        }

        protected void GV_CustomerData_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}