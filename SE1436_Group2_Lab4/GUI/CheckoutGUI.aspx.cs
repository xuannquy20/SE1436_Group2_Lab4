using Lab3_Template.DAL;
using Lab3_Template.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE1436_Group2_Lab4.GUI
{
    public partial class CheckoutGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                User a = (User)Session["acc"];
                SqlCommand orderdate = new SqlCommand("select DateCreated from Carts" +
                " where CartId = @cartid");
                orderdate.Parameters.AddWithValue("@cartid", a.UserName);
                DataTable dt = DAO.GetDataTable(orderdate);
                if (dt.Rows.Count > 0)
                {
                    DataRow dtr = dt.Rows[0];
                    DateTime date = (DateTime)dtr["DateCreated"];
                    string day = date.Day.ToString();
                    string month = date.Month.ToString();
                    string year = date.Year.ToString();
                    TextBox1.Text = day + "/" + month + "/" + year;
                }
                TextBox2.Text = a.UserName;
                TextBox3.Text = a.FirstName;
                TextBox4.Text = a.LastName;
                TextBox5.Text = a.Address;
                TextBox6.Text = a.City;
                TextBox7.Text = a.State;
                TextBox8.Text = a.Country;
                TextBox9.Text = a.Phone;
                TextBox10.Text = a.Email;
                SqlCommand cmd = new SqlCommand("select Sum((a.Price * c.count)) as total" +
                " from Albums a join Carts c" +
                " on c.AlbumId = a.AlbumId" +
                " where c.CartId = @cartid");
                cmd.Parameters.AddWithValue("@cartid", a.UserName);
                DataTable dt1 = DAO.GetDataTable(cmd);
                if (dt1.Rows.Count > 0)
                {
                    DataRow dtr = dt1.Rows[0];
                    TextBox11.Text = dtr["total"].ToString();
                }
            }
        }
    }
}