using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Factory;
using Techie.Models;
using Techie.Repository;

namespace Techie.View
{
    public partial class Service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                MustLogin.Visible = true;
                MenuReparation.Visible = false;

            }
            else if (((UserModel)Session["user"]).UserRole.Equals("Member", StringComparison.CurrentCultureIgnoreCase))
            {
                MustLogin.Visible = false;
                MenuReparation.Visible = true;

            }
            else if (((UserModel)Session["user"]).UserRole.Equals("Seller", StringComparison.CurrentCultureIgnoreCase))
            {
                MustLogin.Visible = false;
                MenuReparation.Visible = true;
            }
            else if (((UserModel)Session["user"]).UserRole.Equals("Admin", StringComparison.CurrentCultureIgnoreCase))
            {
                MustLogin.Visible = false;
                MenuReparation.Visible = true;
            }
            
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void BtnSubmitReparation_Click(object sender, EventArgs e)
        {
            
            string email = Session["email"].ToString();
           int id =  getUserID(email);
            string brand = TxtBrand.Text;
            string problem = TxtProblemInfo.Text;
            string type = TxtName.Text;
            ServiceTable ser = ServiceFactory.createService(brand, problem , type, id);
            ServiceRepository.insertService(ser);

            SuccessMessage.Text = "Successfull";
            
            //GridView1.DataSource = ServiceRepository.getServiceTable();
            //GridView1.DataBind();
        }

        public UserTable getUser(string email)
        {
            return DBSingleton.getDB().UserTables.Where(x => x.UserEmail == email).SingleOrDefault();
        }

        public int getUserID(string email)
        {
            UserTable a = getUser(email);
            return a.UserId;
        }
    }
}