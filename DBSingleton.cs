using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techie
{
    public class DBSingleton
    {
        private static MainDataEntities db;

        public static MainDataEntities getDB()
        {
            if (db == null)
            {
                return db = new MainDataEntities();
            }
            return db;
        }
    }
}