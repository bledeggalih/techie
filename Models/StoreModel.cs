using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techie.Models
{
    public class StoreModel
    {
        public int StoreId { get; set; }
        public String StoreName { get; set; }
        public String StoreEmail { get; set; }
        public String StorePassword { get; set; }
        public String StoreProfilePicture { get; set; }
        public String StorePhoneNumber { get; set; }
        public String StoreAddress { get; set; }
        public String StoreGrade { get; set; }
    }
}