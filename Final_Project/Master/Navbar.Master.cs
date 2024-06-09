using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project.Master
{
    public partial class Navbar : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MsUser user = (MsUser)Session["User"];

            if(user != null )
            {
                if (user.UserRole == "Admin")
                {
                    Uc_Admin.Visible = true;
                    Uc_Customer.Visible = false;
                }
                else if (user.UserRole == "Customer")
                {
                    Uc_Admin.Visible = false;
                    Uc_Customer.Visible = true;
                }
            }
        }
    }
}