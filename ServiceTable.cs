//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Techie
{
    using System;
    using System.Collections.Generic;
    
    public partial class ServiceTable
    {
        public int ServiceId { get; set; }
        public string ServiceBrand { get; set; }
        public string ServiceProblem { get; set; }
        public int UserId { get; set; }
        public string LaptopType { get; set; }
    
        public virtual UserTable UserTable { get; set; }
    }
}
