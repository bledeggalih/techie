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
    
    public partial class HeaderProductTransaction
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HeaderProductTransaction()
        {
            this.DetailProductTransactions = new HashSet<DetailProductTransaction>();
        }
    
        public int HeaderProductTransactionId { get; set; }
        public System.DateTime TransactionProductDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetailProductTransaction> DetailProductTransactions { get; set; }
    }
}
