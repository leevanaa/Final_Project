using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Repository
{
    public class SuplementRepository
    {
        public static List<MsSupplement> GetAllSuplement()
        {
            DatabaseGymMeEntities db = Singleton.GetInstance();
            return db.MsSupplements.ToList();
        }

        public static MsSupplement GetSupplement(String suplementName)
        {
            DatabaseGymMeEntities db = Singleton.GetInstance();

            MsSupplement suplement = (from x in db.MsSupplements
                                     where x.SupplementName == suplementName 
                            select x).FirstOrDefault();
            return suplement;
        }
    }
}