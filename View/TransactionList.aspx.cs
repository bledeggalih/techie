using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Handler;

namespace Techie.View
{
    public partial class TransactionList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadProductData();
        }
        protected void loadProductData()
        {
            GridView1.DataSource = TransactionHandler.getJoinTransaction();
            GridView1.DataBind();
        }
    }
}