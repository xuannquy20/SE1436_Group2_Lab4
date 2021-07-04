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
    public partial class AlbumAddGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlArtist.DataSource = AlbumDAO.GetArtist();
                ddlArtist.DataValueField = "ArtistID";
                ddlArtist.DataTextField = "Name";
                ddlArtist.DataBind();
                ddlGenre.DataSource = AlbumDAO.GetGenre();
                ddlGenre.DataValueField = "GenreID";
                ddlGenre.DataTextField = "Name";
                ddlGenre.DataBind();
                if (Request.QueryString["add"] != null)
                {
                    int add = int.Parse(Request.QueryString["add"]);
                    if (add == 1)
                        Label1.Text = "Add a new Album";
                    else
                        Label1.Text = "Edit An Album";
                }
                if (Session["AlbumID"] != null)
                {
                    int albumID = Convert.ToInt32(Session["AlbumID"].ToString());
                    Album album = AlbumDAO.GetAlbumByID(albumID);
                    TxtTitle.Text = album.Title;
                    txtPrice.Text = album.Price.ToString();
                    txtURL.Text = album.AlbumUrl;
                    ddlArtist.SelectedValue = album.ArtistID.ToString();
                    ddlGenre.SelectedValue = album.GenreID.ToString();
                }
            }
            else
            {
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {

        }
    }
}