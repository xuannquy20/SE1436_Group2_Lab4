using Lab3_Template.DAL;
using Lab3_Template.DTL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE1436_Group2_Lab4.GUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int albumid = int.Parse(Request.QueryString["albumid"]);
                Album ab = AlbumDAO.GetAlbumByID(albumid);
                Label1.Text = ab.Title;
                Label2.Text = ab.AlbumID.ToString();
                Image2.ImageUrl = ab.AlbumUrl;
                TextBox1.Text = ArtistDAO.GetArtistByID(ab.ArtistID).Name;
                TextBox2.Text = GenreDAO.GetGenreByID(ab.GenreID).Name;
                TextBox3.Text = ab.Price.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ShoppingCartDAO cart = ShoppingCartDAO.GetCart(HttpContext.Current);
            cart.AddToCart(int.Parse(Label2.Text));
            Response.Redirect("CartGUI.aspx");
        }
    }
}