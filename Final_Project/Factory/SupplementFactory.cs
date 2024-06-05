using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Factory
{
    public class SupplementFactory
    {
        public static MsSupplement CreateSupplement(String  supplementname, DateTime supplementexpirydate, int supplementprice, int supplementtypeid)
        {
            return new MsSupplement
            {
                SupplementName = supplementname,
                SupplementExpiryDate = supplementexpirydate,
                SupplementPrice = supplementprice,
                SupplementTypeID = supplementtypeid,
            };
        }
    }
}