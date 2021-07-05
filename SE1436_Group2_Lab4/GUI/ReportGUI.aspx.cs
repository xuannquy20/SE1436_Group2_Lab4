using Lab3_Template.DAL;
using System;
using System.Collections.Generic;
using System.Data;
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
            DataTable data = ReportDAO.GetOrderByInformation(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
            GridView1.DataSource = data;
            GridView1.DataBind();
            numberRecord1.Text = data.Rows.Count.ToString();
           
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            GridView2.DataSource = null;
            GridView2.DataBind();
            numberOfRecord2.Visible = false;
            SelectedDatesCollection sdc;
            sdc = Calendar1.SelectedDates;
            TextBox1.Text = sdc[0].ToString("yyyy-MM-dd");
            TextBox2.Text = sdc[sdc.Count - 1].ToString("yyyy-MM-dd");
            DataTable data = ReportDAO.GetOrderByInformation(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
            GridView1.DataSource = data;
            GridView1.DataBind();
            numberRecord1.Text= data.Rows.Count.ToString();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {  
            GridView1.PageIndex = e.NewPageIndex;
            DataTable data = ReportDAO.GetOrderByInformation(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
            GridView1.DataSource = data;
            GridView1.DataBind();
            GridView2.DataSource = null;
            GridView2.DataBind();
            txtTitle.Visible = false;
            numberOfRecord2.Visible = false;

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                OrderID.Text = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[1].Text;
                DataTable data1= ReportDAO.getOrderDetaisByOrderID(OrderID.Text);
                GridView2.DataSource = data1;
                GridView2.DataBind();
                numberOfRecord2.Text = data1.Rows.Count.ToString();
                txtTitle.Visible = true;
                numberOfRecord2.Visible = true;


            }
        }

        protected void txtTo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView2.DataSource = null;
            GridView2.DataBind();
            DataTable data = ReportDAO.GetOrderByInformation(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
            GridView1.DataSource = data;
            GridView1.DataBind();
            numberRecord1.Text = data.Rows.Count.ToString();
            txtTitle.Visible = false;
            numberOfRecord2.Visible = false;
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            GridView2.DataSource = ReportDAO.getOrderDetaisByOrderID(OrderID.Text);
            GridView2.DataBind();
        }
    }
}