using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Repository
{
    public class CartRepository
    {
        public static void AddItemtoCart(MsCart cart) {
            DatabaseGymMeEntities db = Singleton.GetInstance();
            db.MsCarts.Add(cart);
            db.SaveChanges();
        }

        public static List<MsCart> GetCartByUserId(int userId)
        {
            DatabaseGymMeEntities db = Singleton.GetInstance();

            var cartByUserId = (from x in db.MsCarts where userId == x.UserID select x).ToList();
            return cartByUserId;
        }

        public static void ClearCart(int userId)
        {
            DatabaseGymMeEntities db = Singleton.GetInstance();

            var cartItems = from cart in db.MsCarts
                            where cart.UserID == userId
                            select cart;

            if (cartItems.Any())
            {
                db.MsCarts.RemoveRange(cartItems);
                db.SaveChanges();
            }

        }
    }
}