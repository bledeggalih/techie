using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Repository;
using Techie.Handler;

namespace Techie.View
{
    public partial class ViewMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Home.aspx");
            updateView();
        }
        private void updateView()
        {
            UserRepository userRepo = new UserRepository();
            ListViewMember.DataSource = userRepo.getMember();
            ListViewMember.DataBind();
        }

        protected void BtnPromoteMember_Click(object sender, EventArgs e)
        {
            UserHandler.promote(TxtEmail.Text);
            updateView();
        }

        protected void BtnPromoteMemberToSeller_Click(object sender, EventArgs e)
        {
            UserHandler.promoteToSeller(TxtEmail.Text);
            updateView();
        }

        protected void BtnDeleteMember_Click(object sender, EventArgs e)
        {
            UserHandler.delete(TxtEmail.Text);
            updateView();
        }

        protected void BtnDownMember_Click(object sender, EventArgs e)
        {
            UserHandler.down(TxtEmail.Text);
            updateView();
        }

        protected void BtnSetSeller_Click(object sender, EventArgs e)
        {
            UserHandler.promoteToSeller(TxtEmail.Text);
        }
    }
}