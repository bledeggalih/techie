using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Handler;

namespace Techie.View
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CalendarDOB.VisibleDate = DateTime.Now.AddYears(-20);
                CalendarDOB.SelectedDate = DateTime.Now.AddYears(-20);
            }
        }
        protected void CustomValidatorEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = UserHandler.checkEmail(TxtEmail.Text);
        }

        protected void CalendarDOB_SelectionChanged(object sender, EventArgs e)
        {
            TxtDOB.Text = CalendarDOB.SelectedDate.ToString();
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string dob = CalendarDOB.SelectedDate.ToShortDateString();
                string file_name = FileUploadProfilePicture.FileName.ToString();
                FileUploadProfilePicture.PostedFile.SaveAs(Server.MapPath("~/Image_Data/User/" + file_name));
                string role = "Member";

                UserHandler.register(TxtName.Text, TxtEmail.Text, TxtPassword.Text, RadioGender.SelectedValue,
                    dob, file_name, TxtPhoneNumber.Text, TxtAddress.Text, role, TxtCity.Text,TxtCountry.Text,TxtState.Text,TxtPostCode.Text);

                LblMessage.Text = "Successfully register account!";
                Response.AddHeader("Refresh", "3,url=Home.aspx");
                LblRedirect.Visible = true;
            }
            else
                LblMessage.Text = "Please fill all required data!";
        }
    }
}