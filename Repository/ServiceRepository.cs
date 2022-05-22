using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techie.Repository
{
    public class ServiceRepository
    {
        public static void insertService(ServiceTable service)
        {
            DBSingleton.getDB().ServiceTables.Add(service);
            DBSingleton.getDB().SaveChanges();
        }

        public static List<ServiceTable> getServiceTable()
        {
            return DBSingleton.getDB().ServiceTables.ToList();
        }
    }
}