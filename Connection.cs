using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Techie
{
    public class Connection
    {
        SqlConnection DBConnection;
        String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MainData.mdf;Integrated Security=True";

        public Connection()
        {
            DBConnection = new SqlConnection(ConnectionString);
        }

        public DataTable ExecuteQuery(string query)
        {
            if (DBConnection.State == ConnectionState.Open)
            {
                DBConnection.Close();
            }
            DBConnection.Open();
            SqlCommand command = new SqlCommand(query, DBConnection);
            SqlDataReader reader = command.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            DBConnection.Close();
            return dt;
        }

        public void ExecuteNQuery(string query)
        {
            if (DBConnection.State == ConnectionState.Open)
            {
                DBConnection.Close();
            }
            DBConnection.Open();
            SqlCommand command = new SqlCommand(query, DBConnection);
            command.ExecuteNonQuery();
            DBConnection.Close();
        }
    }
}