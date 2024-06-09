using Final_Project.Models;
using Final_Project.Repository;
using Final_Project.Modules;
using System;
using Final_Project.Factory;


namespace Final_Project.Handler
{
    public class CartHandler
    {
        public static Response<MsCart> AddSuplement(MsUser user,String suplementName, int quantity)
        {
            MsSupplement supplement = SuplementRepository.GetSupplement(suplementName);
            MsCart cart = CartFactory.CreateCart(user.UserID, supplement.SupplementID, quantity);
            CartRepository.AddItemtoCart(cart);

            return new Response<MsCart>()
            {
                IsSuccess = true,
                Payload = cart,
                Message = "Suplements added"
            };
        }
    }
}