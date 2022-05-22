using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Techie.Factory;
using Techie.Repository;

namespace Techie.Handler
{
    public class ProductHandler
    {
        public static ProductRepository ProductRepo = new ProductRepository();

        public static void add(string name, int price, int stock, string picture)
        {
            ProductRepo.addProduct(ProductFactory.createProduct(name, price, stock, picture));
        }

        public static void delete(int id)
        {
            ProductRepo.deleteProduct(ProductFactory.createProduct(id));
        }

        public static void update(int id, string name, int price, int stock, string picture)
        {
            ProductRepo.updateProduct(ProductFactory.createProduct(id, name, price, stock, picture));
        }
        public static List<ProductTable> getProductByUSD()
        {
            List<ProductTable> productList = ProductRepository.getAllData();
            foreach (ProductTable p in productList)
            {
                p.ProductPrice = (int)Math.Ceiling(p.ProductPrice / 14000.00);
            }
            return productList;
        }
    }
}