using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techie.Models
{
    public class TransactionModel
    {
        public int HeaderId { set; get; }
        public int DetailId { set; get; }
        public string ProductName { set; get; }
        public DateTime TransactionDate { set; get; }
    }
}