using Lab3_Template.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE1436_Group2_Lab4.GUI
{
    public partial class CartGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShoppingCartDAO cart = ShoppingCartDAO.GetCart(HttpContext.Current);
                ListView1.DataSource = cart.GetCartItems();
                bindData();
            }
        }
        private void bindData()
        {

            ShoppingCartDAO cart = ShoppingCartDAO.GetCart(HttpContext.Current);
            ListView1.DataSource = cart.GetCartItems();
            ListView1.DataBind();
            Session["cartCount"] = cart.GetCount();
            labelTotal.Text = string.Format("{0:0.00}", cart.GetTotal());
        }
        protected void RemoveLink_Click(object sender, CommandEventArgs e)
        {
            // Remove an Album from cart
            ShoppingCartDAO cart = ShoppingCartDAO.GetCart(HttpContext.Current);
            cart.RemoveFromCart(int.Parse(e.CommandArgument.ToString()));
            bindData();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["acc"] == null)
            {
                Response.Redirect("LoginGUI.aspx");
            }
            else
            {
                Response.Redirect("CheckoutGUI.aspx");
            }
        }
    }
}