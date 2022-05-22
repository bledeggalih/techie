using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Techie.Models;

namespace Techie.Repository
{
    public class ProductRepository
    {
        Connection DBConnection = new Connection();

        public static List<ProductTable> getAllData()
        {
            return DBSingleton.getDB().ProductTables.ToList();
        }

        public DataTable getAllProduct()
        {
            string query = String.Format("SELECT * FROM [ProductTable]");

            DataTable dt = new DataTable();
            dt = DBConnection.ExecuteQuery(query);

            return dt;
        }

        public void addProduct(ProductModel Product)
        {
            string query = String.Format("INSERT INTO [ProductTable] (ProductName, ProductPrice, ProductStock, ProductPicture) VALUES ('{0}',{1},{2},'{3}')",
                Product.ProductName, Product.ProductPrice, Product.ProductStock, Product.ProductPicture);
            DBConnection.ExecuteNQuery(query);
        }

        public void deleteProduct(ProductModel Product)
        {
            string query = String.Format("DELETE FROM [ProductTable] WHERE ProductId = {0}", Product.ProductId);
            DBConnection.ExecuteNQuery(query);
        }

        public void updateProduct(ProductModel Product)
        {
            string query = String.Format("UPDATE [ProductTable] SET ProductName = '{0}', ProductPrice = {1}, ProductStock = {2}, ProductPicture = '{3}' WHERE ProductId = {4}",
                Product.ProductName, Product.ProductPrice, Product.ProductStock, Product.ProductPicture, Product.ProductId);
            DBConnection.ExecuteNQuery(query);
        }
    }
}