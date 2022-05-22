using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Techie.Models;

namespace Techie.Factory
{
    public class StoreFactory
    {
        public static StoreModel createStore(string email, string password)
        {
            StoreModel store = new Models.StoreModel();
            store.StoreName = email;
            store.StorePassword = password;
            return store;
        }

        public static StoreModel createStore(string email)
        {
            StoreModel store = new Models.StoreModel();
            store.StoreEmail = email;
            return store;
        }

        public static StoreModel createStore(string name, string email, string grade)
        {
            StoreModel store = new Models.StoreModel();
            store.StoreName = name;
            store.StoreEmail = email;
            store.StoreGrade = grade;
            return store;
        }

        public static StoreModel createStore(string name, string email, string password, string profilePicture,
            string phoneNumber, string address, string grade)
        {
            StoreModel store = new Models.StoreModel();
            store.StoreName = name;
            store.StoreEmail = email;
            store.StorePassword = password;
            store.StoreProfilePicture = profilePicture;
            store.StorePhoneNumber = phoneNumber;
            store.StoreAddress = address;
            store.StoreGrade = grade;
            return store;
        }
        public static StoreModel editAcc(string password)
        {
            StoreModel store = new Models.StoreModel();
            store.StorePassword = password;
            return store;
        }
    }
}