using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Techie.Repository;
using Techie.Factory;
using Techie.Models;

namespace Techie.Handler
{
    public class TransactionHandler
    {
        public static List<TransactionModel> getJoinTransaction()
        {
            var joinQuery = from ht in DBSingleton.getDB().HeaderProductTransactions
                            join dt in DBSingleton.getDB().DetailProductTransactions
                            on ht.HeaderProductTransactionId equals dt.HeaderTransactionId
                            join prod in DBSingleton.getDB().ProductTables
                            on dt.ProductId equals prod.ProductId
                            select new TransactionModel
                            {
                                DetailId = dt.DetailTransactionId,
                                HeaderId = ht.HeaderProductTransactionId,
                                ProductName = prod.ProductName,
                                TransactionDate = ht.TransactionProductDate
                            };
            List<TransactionModel> joinList = new List<TransactionModel>();
            foreach (var item in joinQuery)
            {
                joinList.Add(item);
            }
            return joinList;
        }
    }
}