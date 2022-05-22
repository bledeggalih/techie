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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            Image1.ImageUrl = ((UserModel)Session["user"]).UserProfilePicture;
            LblCurrentName.Text = ((UserModel)Session["user"]).UserName;
            LblCurrentEmail.Text = ((UserModel)Session["user"]).UserEmail;
            LblCurrentGender.Text = ((UserModel)Session["user"]).UserGender;
            LblCurrentDBO.Text = ((UserModel)Session["user"]).UserBirthDate;
            LblCurrentPhone.Text = ((UserModel)Session["user"]).UserPhoneNumber;
            LblCurrentAddress.Text = ((UserModel)Session["user"]).UserAddress;
            LblCurrentRole.Text = ((UserModel)Session["user"]).UserRole;

            LblTableName.Text = ((UserModel)Session["user"]).UserName;
            LblTableEmail.Text = ((UserModel)Session["user"]).UserEmail;
            LblTablePhone.Text = ((UserModel)Session["user"]).UserPhoneNumber;
            LblTableAddress.Text = ((UserModel)Session["user"]).UserAddress;


        }
        protected void CustomValidator_email_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = UserHandler.checkEmail(TxtEmail.Text);
        }

        protected void BtnChangePassword_Click(object sender, EventArgs e)
        {
            UserHandler.changePassword(TxtNewPassword.Text, TxtEmail.Text);
            LblMessage.Text = "Successfully change password!";
            Response.AddHeader("Refresh", "3,url=Profile.aspx");
            LblRedirect.Visible = true;

        }
    }
}