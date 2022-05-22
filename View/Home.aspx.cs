using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techie
{
    public partial class Home: Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrimaryBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Service.aspx");
        }

        protected void BtnGuarantee_Click(object sender, EventArgs e)
        {

        }

        protected void BtnEasy_Click(object sender, EventArgs e)
        {

        }

        protected void BtnQuality_Click(object sender, EventArgs e)
        {

        }
    }
}