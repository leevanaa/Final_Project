using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Repository
{
    public class Singleton
    {
        public static DatabaseGymMeEntities db = null;

        public static DatabaseGymMeEntities GetInstance()
        {
            if (db == null)
            {
                db = new DatabaseGymMeEntities();
            }
            return db;
        }
      
    }
}