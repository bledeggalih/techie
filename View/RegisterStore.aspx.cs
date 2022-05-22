using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Handler;

namespace Techie.View
{
    public partial class RegisterStore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }
        protected void CustomValidatorEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = StoreHandler.checkEmail(TxtEmail.Text);
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string file_name = FileUploadProfilePicture.FileName.ToString();
                FileUploadProfilePicture.PostedFile.SaveAs(Server.MapPath("~/Image_Data/User/" + file_name));
                string grade = "Freemium";

                StoreHandler.register(TxtName.Text, TxtEmail.Text, TxtPassword.Text,
                    file_name, TxtPhoneNumber.Text, TxtAddress.Text, grade);

                LblMessage.Text = "Successfully register account!";
                Response.AddHeader("Refresh", "3,url=Home.aspx");
                LblRedirect.Visible = true;
            }
            else
                LblMessage.Text = "Please fill all required data!";
        }
    }
}