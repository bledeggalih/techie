using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Techie.Models;

namespace Techie.Factory
{
    public class UserFactory
    {
        public static UserModel createUser(string email, string password)
        {
            UserModel user = new Models.UserModel();
            user.UserEmail = email;
            user.UserPassword = password;
            return user;
        }

        public static UserModel createUser(string email)
        {
            UserModel user = new Models.UserModel();
            user.UserEmail = email;
            return user;
        }

        public static UserModel createUser(string name, string email, string role)
        {
            UserModel user = new Models.UserModel();
            user.UserName = name;
            user.UserEmail = email;
            user.UserRole = role;
            return user;
        }

        public static UserModel createUser(string name, string email, string password, string gender, string birthDate, string profilePicture,
            string phoneNumber, string address, string role, string city, string country, string state, string postcode)
        {
            UserModel user = new Models.UserModel();
            user.UserName = name;
            user.UserEmail = email;
            user.UserPassword = password;
            user.UserGender = gender;
            user.UserBirthDate = birthDate;
            user.UserProfilePicture = profilePicture;
            user.UserPhoneNumber = phoneNumber;
            user.UserAddress = address;
            user.UserRole = role;
            user.UserCity = city;
            user.UserCountry = country;
            user.UserState = state;
            user.PostCode = postcode;
            return user;
        }
        public static UserModel editAcc(string password)
        {
            UserModel user = new Models.UserModel();
            user.UserPassword = password;
            return user;
        }
    }
}