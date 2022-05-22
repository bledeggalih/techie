using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Techie.Models;
using Techie.Factory;

namespace Techie.Repository
{
    public class StoreRepository
    {
        Connection DBConnection = new Connection();

        public StoreModel getStore(StoreModel Store)
        {
            string query = String.Format("SELECT * FROM [StoreTable] WHERE StoreEmail = '{0}' AND StorePassword = '{1}'",
                Store.StoreEmail, Store.StorePassword);

            DataTable dt = new DataTable();
            dt = DBConnection.ExecuteQuery(query);

            StoreModel tempStore = null;

            foreach (DataRow row in dt.Rows)
                tempStore = StoreFactory.createStore(row["StoreName"].ToString(), row["StoreEmail"].ToString(), row["StoreGrade"].ToString());

            return tempStore;
        }

        public DataTable getStore()  //view all store
        {
            string query = String.Format("SELECT * FROM [StoreTable]");

            DataTable dt = new DataTable();
            dt = DBConnection.ExecuteQuery(query);

            return dt;
        }

        public bool checkEmail(StoreModel Store)
        {
            string query = String.Format("SELECT * FROM [StoreTable] WHERE StoreEmail = '{0}'", Store.StoreEmail);

            DataTable dt = new DataTable();
            dt = DBConnection.ExecuteQuery(query);

            string check = null;
            foreach (DataRow x in dt.Rows)
                check = x["StoreEmail"].ToString();

            if (check == null)
                return true;
            return false;
        }

        public void addStore(StoreModel Store)
        {
            string query = String.Format("INSERT INTO [StoreTable] (StoreName, StoreEmail, StorePassword, StoreProfilePicture, StorePhoneNumber, StoreAddress, StoreGrade) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                Store.StoreName, Store.StoreEmail, Store.StorePassword, Store.StoreProfilePicture, Store.StorePhoneNumber, Store.StoreAddress, Store.StoreGrade);
            DBConnection.ExecuteNQuery(query);
        }

        public void deleteStore(StoreModel Store)
        {
            string query = String.Format("DELETE FROM [StoreTable] WHERE StoreEmail = '{0}'", Store.StoreEmail);
            DBConnection.ExecuteNQuery(query);
        }
        public void downStore(StoreModel Store)
        {
            string query = String.Format("UPDATE [StoreTable] SET StoreGrade = 'Freemium' WHERE StoreEmail = '{0}'", Store.StoreEmail);
            DBConnection.ExecuteNQuery(query);
        }

        public void promoteStore(StoreModel Store)
        {
            string query = String.Format("UPDATE [StoreTable] SET StoreRole = 'Premium' WHERE StoreEmail = '{0}'", Store.StoreEmail);
            DBConnection.ExecuteNQuery(query);
        }
        public void changePass(StoreModel Store)
        {
            string query = String.Format("UPDATE [StoreTable] SET StorePassword = '{0}' WHERE StoreEmail = '{0}'", Store.StoreEmail);
            DBConnection.ExecuteNQuery(query);
        }
    }
}