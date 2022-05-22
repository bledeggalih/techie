using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techie.Factory
{
    public class ServiceFactory
    {
        public static ServiceTable createService(string brand, string problem,string laptopType, int userId)
        {
            return new ServiceTable()
            {
                ServiceBrand = brand,
                ServiceProblem = problem,
                LaptopType = laptopType,
                UserId = userId
            };
        }

    }
}