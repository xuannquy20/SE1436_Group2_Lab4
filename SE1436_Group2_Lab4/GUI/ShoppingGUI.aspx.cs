using Lab3_Template.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE1436_Group2_Lab4.GUI
{
    public partial class ShoppingGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                e.Row.Cells[1].Visible = false;
                e.Row.Cells[3].Visible = false;
            }
            catch(Exception ex) { }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblGenreName.Text = GridView1.SelectedRow.Cells[2].Text;
            lblGenreID.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}