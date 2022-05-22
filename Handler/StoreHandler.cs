using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Techie.Factory;
using Techie.Repository;
using Techie.Models;

namespace Techie.Handler
{
    public class StoreHandler
    {
        public static StoreRepository StoreRepo = new StoreRepository();

        public static StoreModel login(string email, string password)
        {
            return StoreRepo.getStore(StoreFactory.createStore(email, password));
        }

        public static bool checkEmail(string email)
        {
            return StoreRepo.checkEmail(StoreFactory.createStore(email));
        }

        public static void register(string name, string email, string password, string profilePicture,
            string phoneNumber, string address, string grade)
        {
            StoreRepo.addStore(StoreFactory.createStore(name, email, password, profilePicture,
            phoneNumber, address, grade));
        }

        public static void changePassword(string password, string name)
        {
            StoreRepo.changePass(StoreFactory.createStore(password, name));
        }

        public static void delete(string email)
        {
            StoreRepo.deleteStore(StoreFactory.createStore(email));
        }

        public static void promote(string email)
        {
            StoreRepo.promoteStore(StoreFactory.createStore(email));
        }
        public static void down(string email)
        {
            StoreRepo.downStore(StoreFactory.createStore(email));
        }
    }
}