using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE1436_Group2_Lab4.GUI
{
    public partial class ReportGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
                GridView2.DataSource = null;
                GridView2.DataBind();
                numberRecord2.Visible = false;
                SelectedDatesCollection sdc;
                sdc = Calendar1.SelectedDates;
                txtFrom.Text = sdc[0].ToString("yyyy-MM-dd");
                txtTo.Text = sdc[sdc.Count - 1].ToString("yyyy-MM-dd");
                DataTable data = ReportDAO.GetOrderByInformation(txtFrom.Text, txtTo.Text, TextBox3.Text, TextBox4.Text);
                GridView1.DataSource = data;
                GridView1.DataBind();
                numberRecord1.Text = data.Rows.Count.ToString();
        }
    }
}