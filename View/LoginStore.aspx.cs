using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Models;
using Techie.Handler;

namespace Techie.View
{
    public partial class StoreLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.Cookies["email"] != null)
            {
                TxtEmail.Text = Request.Cookies["email"].Value;
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                StoreModel store = StoreHandler.login(TxtEmail.Text, TxtPassword.Text);
                if (store == null)
                {
                    LblMessage.Text = "Invalid email or password!";
                }
                else
                {
                    if (RememberMe.Checked)
                    {
                        Response.Cookies["email"].Value = TxtEmail.Text;
                        Response.Cookies["email"].Expires = DateTime.Now.AddHours(1);
                    }
                    Session["store"] = store;
                    Response.Redirect("Home.aspx");
                }
            }
        }

        protected void BtnRegisterStore_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterStore.aspx");
        }
    }
}