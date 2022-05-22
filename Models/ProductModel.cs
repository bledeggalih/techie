using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techie.Models
{
    public class ProductModel
    {
        public int ProductId { get; set; }
        public String ProductName { get; set; }
        public int ProductPrice { get; set; }
        public int ProductStock { get; set; }
        public String ProductPicture { get; set; }
    }
}