using Lab3_Template.DAL;
using Lab3_Template.DTL;
using System;
using System.Collections.Generic;
using System.IO;
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
                    int albumID = Int32.Parse((string)Session["AlbumID"]);
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
            if (Request.QueryString["add"] == null)
            {
                Response.Redirect("AlbumGUI.aspx");
            }
            else
            {
                int add = int.Parse(Request.QueryString["add"]);
                if (add == 1)
                {
                    bool isSuccess = AlbumDAO.Insert(new Album(0, int.Parse(ddlGenre.SelectedValue.ToString()), int.Parse(ddlArtist.SelectedValue.ToString()), TxtTitle.Text, double.Parse(txtPrice.Text), txtURL.Text));
                    if (isSuccess)
                    {
                        Response.Redirect("AlbumGUI.aspx");
                    }
                    else
                    {
                    }
                }
                else
                {
                    int albumID = int.Parse(Session["AlbumID"].ToString());
                    bool isSuccess = AlbumDAO.Update(new Album(albumID, int.Parse(ddlGenre.SelectedValue.ToString()), int.Parse(ddlArtist.SelectedValue.ToString()), TxtTitle.Text, double.Parse(txtPrice.Text), txtURL.Text));
                    if (isSuccess)
                    {
                        Session.Remove("AlbumID");
                        Response.Redirect("AlbumGUI.aspx");
                    }
                    else
                    {
                    }
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session.Remove("AlbumID");
            Response.Redirect("AlbumGUI.aspx");
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    //Path.GetFileName Returns the file name 
                    //and extension of the specified path string.
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    string ext = filename.Substring(filename.IndexOf('.'));
                    filename = Guid.NewGuid().ToString() + ext;
                    // Server.MaPath return the physical file path 
                    //that corresponds to the specified virtual path.
                    FileUpload1.SaveAs(Server.MapPath("/Images/") + filename);
                    txtURL.Text = "/Images/" + filename;
                    Image2.ImageUrl = txtURL.Text;
                }
                catch (Exception ex)
                {
                    txtURL.Text = "";
                    Image2.ImageUrl = "";
                }
            }
        }
    }
    }
