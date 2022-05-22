using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Techie.Factory;
using Techie.Repository;
using Techie.Models;

namespace Techie.Handler
{
    public class UserHandler
    {
        public static UserRepository UserRepo = new UserRepository();

        public static UserModel login(string email, string password)
        {
            return UserRepo.getUser(UserFactory.createUser(email, password));
        }

        public static bool checkEmail(string email)
        {
            return UserRepo.checkEmail(UserFactory.createUser(email));
        }

        public static void register(string name, string email, string password, string gender, string birthDate, string profilePicture,
            string phoneNumber, string address, string role, string city, string country, string state, string postcode)
        {
            UserRepo.addUser(UserFactory.createUser(name, email, password, gender, birthDate, profilePicture,
            phoneNumber, address, role, city,country,state,postcode));
        }

        public static void changePassword(string password, string name)
        {
            UserRepo.changePass(UserFactory.createUser(password, name));
        }

        public static void delete(string email)
        {
            UserRepo.deleteUser(UserFactory.createUser(email));
        }
        public static void promoteToSeller(string email) {
            UserRepo.promoteToSeller(UserFactory.createUser(email));
        }

        public static void promote(string email)
        {
            UserRepo.promoteUser(UserFactory.createUser(email));
        }
        public static void down(string email)
        {
            UserRepo.downUser(UserFactory.createUser(email));
        }
    }
}