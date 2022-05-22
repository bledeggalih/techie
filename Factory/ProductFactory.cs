using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Techie.Models;


namespace Techie.Factory
{
    public class ProductFactory
    {
        public static ProductModel createProduct(string name, int price, int stock, string Picture)
        {
            ProductModel product = new ProductModel();
            product.ProductName = name;
            product.ProductPrice = price;
            product.ProductStock = stock;
            product.ProductPicture = Picture;
            return product;
        }

        public static ProductModel createProduct(int id, string name, int price, int stock, string Picture)
        {
            ProductModel product = new ProductModel();
            product.ProductId = id;
            product.ProductName = name;
            product.ProductPrice = price;
            product.ProductStock = stock;
            product.ProductPicture = Picture;
            return product;
        }

        public static ProductModel createProduct(int id)
        {
            ProductModel product = new ProductModel();
            product.ProductId = id;
            return product;
        }
    }
}