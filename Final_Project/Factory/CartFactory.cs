using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Factory
{
    public class CartFactory
    {
        public static MsCart CreateCart(int user, int supplementId, int quantity)
        {
            return new MsCart
            {
                UserID = user,
                SupplementID = supplementId,
                Quantity = quantity,
            };
        }
    }
}