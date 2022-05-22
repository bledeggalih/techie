using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Models;

namespace Techie
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                MenuLogin.Visible = true;
                MenuViewMember.Visible = false;
                MenuLogout.Visible = false;
                MenuProfile.Visible = false;
                MenuMyStore.Visible = false;

            }
            else
            {
                if (((UserModel)Session["user"]).UserRole.Equals("Member", StringComparison.CurrentCultureIgnoreCase))
                {
                    MenuLogin.Visible = false;
                    MenuViewMember.Visible = false;
                    MenuLogout.Visible = true;
                    MenuProfile.Visible = true;
                    MenuMyStore.Visible = false;
                }
                else if (((UserModel)Session["user"]).UserRole.Equals("Admin", StringComparison.CurrentCultureIgnoreCase))
                {
                    MenuLogin.Visible = false;
                    MenuViewMember.Visible = true;
                    MenuLogout.Visible = true;
                    MenuProfile.Visible = true;
                    MenuMyStore.Visible = false;
                }
                else if (((UserModel)Session["user"]).UserRole.Equals("Seller", StringComparison.CurrentCultureIgnoreCase))
                {
                    MenuLogin.Visible = false;
                    MenuViewMember.Visible = false;
                    MenuLogout.Visible = true;
                    MenuProfile.Visible = true;
                    MenuMyStore.Visible = true;
                }
            }
        }
    }
}