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
    public partial class Login : System.Web.UI.Page
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

                //if (RadioLoginType.SelectedValue == "Seller")
                //{
                //    StoreModel store = StoreHandler.login(TxtEmail.Text, TxtPassword.Text);
                //    if (store == null)
                //    {
                //        LblMessage.Text = "Invalid email or password!";
                //    }
                //    else
                //    {
                //    if (RememberMe.Checked)
                //    {
                //        Response.Cookies["email"].Value = TxtEmail.Text;
                //        Response.Cookies["email"].Expires = DateTime.Now.AddHours(1);
                //    }
                //    Session["store"] = store;
                //    Response.Redirect("Home.aspx");
                //    }

                //}
                //else if (RadioLoginType.SelectedValue == "User") {
                    UserModel user = UserHandler.login(TxtEmail.Text, TxtPassword.Text);
                    if (user == null)
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
                    Session["user"] = user;
                    Session["id"] = user.UserId;
                    Session["email"] = user.UserEmail;
                    Response.Redirect("Home.aspx");
                    }
                
            }
        }

        protected void RegistBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void StoreRegisterBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterStore.aspx");
        }

        protected void BtnLoginStore_Click(object sender, EventArgs e)
        {
        //    if (Page.IsValid)
        //    {
        //        StoreModel user = StoreHandler.login(TxtEmail.Text, TxtPassword.Text);
        //        if (user == null)
        //        {
        //            LblMessage.Text = "Invalid email or password!";
        //        }
        //        else
        //        {
        //            if (RememberMeStore.Checked)
        //            {
        //                Response.Cookies["email"].Value = TxtEmail.Text;
        //                Response.Cookies["email"].Expires = DateTime.Now.AddHours(1);
        //            }
        //            Session["user"] = user;
        //            Response.Redirect("Home.aspx");
        //        }
        //    }
        }

        protected void BtnLoginStorePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginStore.aspx");
        }
    }
}