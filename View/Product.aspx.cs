using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Techie.Handler;
using Techie.Models;
using Techie.Repository;
using System.Data;
using System.Data.SqlClient;

namespace Techie.View
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                MenuAddProduct.Visible = false;
                MenuModifyProduct.Visible = false;
                //OrderProduct.Visible = false;
            }
            else if (((UserModel)Session["user"]).UserRole.Equals("Member", StringComparison.CurrentCultureIgnoreCase))
            {
                MenuAddProduct.Visible = false;
                MenuModifyProduct.Visible = false;
                //OrderProduct.Visible = true;


            }
            else if (((UserModel)Session["user"]).UserRole.Equals("Admin", StringComparison.CurrentCultureIgnoreCase))
            {
                MenuAddProduct.Visible = true;
                MenuModifyProduct.Visible = true;
                //OrderProduct.Visible = true;
            }
            updateView();
        }
        private void updateView()
        {
            ProductRepository ProductRepo = new ProductRepository();
            ListViewProduct.DataSource = ProductRepo.getAllProduct();
            ListViewProduct.DataBind();
        }

        protected void BtnAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void BtnUpdateProduct_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["product_id"] = Convert.ToInt32(TxtProductId.Text);
                Response.Redirect("UpdateProduct.aspx");
            }
        }

        protected void BtnDeleteProduct_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ProductHandler.delete(Convert.ToInt32(TxtProductId.Text));
                updateView();
            }
        }

        protected void BtnAddToCart_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "SELECT * FROM ProductTable WHERE ProductId=" + ProductId + "";
            //cmd.ExecuteNonQuery();
            //DataTable dt = new DataTable();
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //da.Fill(dt);
            //foreach (DataRow dr in dt.Rows)
            //{
            //    ProductName = dr["ProductName"].ToString();
            //    ProductPrice = dr["ProductName"].ToString();
            //    ProductStock = dr["ProductName"].ToString();
            //    ProductPicture = dr["ProductName"].ToString();

            //}
            //con.Close(); ;

            //if (Request.Cookies["aa"] == null)
            //{
            //    Response.Cookies["aa"].Value = ProductName.ToString() + "," + ProductPrice.ToString() + "," + ProductStock.ToString() + "," + ProductPicture.ToString();
            //    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            //}
            //else
            //{
            //    Response.Cookies["aa"].Value = Request.Cookies["aa"] + "|" + ProductName.ToString() + "," + ProductPrice.ToString() + "," + ProductStock.ToString() + "," + ProductPicture.ToString();
            //    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            //}




            if (Page.IsValid)
            {
                Session["product_id"] = Convert.ToInt32(TxtProductId.Text);

                // TransactionHandler.add(TxtTransactionName.Text, Convert.ToInt32(ProductPrice), Convert.ToInt32(TxtProductStock.Text), file_name);
            }
            //else
            //{
            //    LblOrderId.Text = "Product id not available";
            //}
            Response.Redirect("Product.aspx");
        }
    }
}