using Final_Project.Factory;
using Final_Project.Handler;
using Final_Project.Models;
using Final_Project.Modules;
using Final_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Controller
{
    public class CartController
    {
        private static object supplementRepository;

        public static String AddSupplementToCart(MsUser user, String suplementName, int quantity)
        {

            Response<MsCart> response = CartHandler.AddSuplement(user,suplementName,quantity);

            if (response.IsSuccess)
            {
                return "success";
            }
            else {
                return "fail";
            }
        }
    }
}