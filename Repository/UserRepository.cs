using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Techie.Factory;
using Techie.Models;
using System.Diagnostics;

namespace Techie.Repository
{
    public class UserRepository
    {
        Connection DBConnection = new Connection();

        public UserModel getUser(UserModel User)
        {
            string query = String.Format("SELECT * FROM [UserTable] WHERE UserEmail = '{0}' AND UserPassword = '{1}'",
                User.UserEmail, User.UserPassword);

            DataTable dt = new DataTable();
            dt = DBConnection.ExecuteQuery(query);

            UserModel tempUser = null;

            foreach (DataRow row in dt.Rows)
                tempUser = UserFactory.createUser(row["UserName"].ToString(), row["UserEmail"].ToString(), row["UserRole"].ToString());

            return tempUser;
        }

        public DataTable getMember()  //view all user
        {
            string query = String.Format("SELECT * FROM [UserTable]");

            DataTable dt = new DataTable();
            dt = DBConnection.ExecuteQuery(query);

            return dt;
        }

        public bool checkEmail(UserModel User)
        {
            string query = String.Format("SELECT * FROM [UserTable] WHERE UserEmail = '{0}'", User.UserEmail);

            DataTable dt = new DataTable();
            dt = DBConnection.ExecuteQuery(query);

            string check = null;
            foreach (DataRow x in dt.Rows)
                check = x["UserEmail"].ToString();

            if (check == null)
                return true;
            return false;
        }

        public void addUser(UserModel User)
        {
            string query = String.Format("INSERT INTO [UserTable] (UserName, UserEmail, UserPassword, UserGender, UserBirthDate, UserProfilePicture, UserPhoneNumber, UserAddress, UserRole,UserCity,UserState,UserCountry,PostCode) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}')", User.UserName, User.UserEmail, User.UserPassword, User.UserGender, User.UserBirthDate, User.UserProfilePicture, User.UserPhoneNumber, User.UserAddress, User.UserRole,User.UserCity,User.UserState,User.UserCountry,User.PostCode);

            Debug.WriteLine("Test");
            DBConnection.ExecuteNQuery(query);


        }

        public void deleteUser(UserModel User)
        {
            string query = String.Format("DELETE FROM [UserTable] WHERE UserEmail = '{0}'", User.UserEmail);
            DBConnection.ExecuteNQuery(query);
        }
        public void downUser(UserModel User)
        {
            string query = String.Format("UPDATE [UserTable] SET UserRole = 'Member' WHERE UserEmail = '{0}'", User.UserEmail);
            DBConnection.ExecuteNQuery(query);
        }
        public void promoteToSeller(UserModel User) {
            string query = String.Format("UPDATE [UserTable] SET UserRole = 'Seller' WHERE UserEmail = '{0}'", User.UserEmail);
            DBConnection.ExecuteNQuery(query);
        }
        public void promoteUser(UserModel User)
        {
            string query = String.Format("UPDATE [UserTable] SET UserRole = 'Admin' WHERE UserEmail = '{0}'", User.UserEmail);
            DBConnection.ExecuteNQuery(query);
        }
        public void changePass(UserModel User)
        {
            string query = String.Format("UPDATE [UserTable] SET UserPassword = '{0}' WHERE UserEmail = '{0}'", User.UserEmail);
            DBConnection.ExecuteNQuery(query);
        }

        public UserTable getUser(string email)
        {
            return DBSingleton.getDB().UserTables.Where(x => x.UserEmail == email).SingleOrDefault();
        }

        public int getUserID(string email)
        {
            UserTable a = getUser(email);
            return a.UserId;
        }
    }
}