using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Factory
{
    public class UserFactory
    {
        public static MsUser CreateUser(String username, String email, DateTime DOB, String gender, String role, String password)
        {
            return new MsUser
            {
                UserName = username,
                UserEmail = email,
                UserDOB = DOB,
                UserGender = gender,
                UserRole = role,
                Password = password,

            };
        } 
    }
}