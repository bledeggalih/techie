using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Handler;

namespace Techie.View
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Product.aspx");
        }
        protected void CustomValidatorProductStock_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Convert.ToInt32(TxtProductStock.Text) > 0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void BtnAddProduct_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string file_name = FileUploadProductPicture.FileName.ToString();
                FileUploadProductPicture.PostedFile.SaveAs(Server.MapPath("~/Image_Data/Product/" + file_name));

                ProductHandler.add(TxtProductName.Text, Convert.ToInt32(TxtProductPrice.Text), Convert.ToInt32(TxtProductStock.Text), file_name);
                LblMessage.Text = "Successfully add product!";
                Response.Redirect("Product.aspx");
            }
            else
                LblMessage.Text = "Please fill all required data!";
        }
    }
}