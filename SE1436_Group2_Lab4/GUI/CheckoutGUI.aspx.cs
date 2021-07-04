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
                    orderDate.Text = day + "/" + month + "/" + year;
                }
                userName.Text = a.UserName;
                firstName.Text = a.FirstName;
                lastName.Text = a.LastName;
                address.Text = a.Address;
                city.Text = a.City;
                state.Text = a.State;
                country.Text = a.Country;
                phone.Text = a.Phone;
                email.Text = a.Email;
                SqlCommand cmd = new SqlCommand("select Sum((a.Price * c.count)) as total" +
                " from Albums a join Carts c" +
                " on c.AlbumId = a.AlbumId" +
                " where c.CartId = @cartid");
                cmd.Parameters.AddWithValue("@cartid", a.UserName);
                DataTable dt1 = DAO.GetDataTable(cmd);
                if (dt1.Rows.Count > 0)
                {
                    DataRow dtr = dt1.Rows[0];
                    total.Text = dtr["total"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime date = Convert.ToDateTime(orderDate.Text);
            Order o = new Order
            {
                OrderDate = date,
                PromoCode = promoCode.Text,
                UserName = userName.Text,
                FirstName = firstName.Text,
                LastName = lastName.Text,
                Address = address.Text,
                City = city.Text,
                State = state.Text,
                Country = country.Text,
                Phone = phone.Text,
                Email = email.Text,
                Total = double.Parse(total.Text)
            };
            OrderDAO.Insert(o);
            SqlCommand sql = new SqlCommand ("insert into OrderDetails (OrderId, AlbumId,Quantity,UnitPrice) (select Max(o.orderiD) as OrderId, c.AlbumId,c.[Count], a.Price as UnitPrice from Carts c " +
            "join Albums a " +
            "on c.AlbumId = a.AlbumId " +
            "join Orders o " +
            "on o.UserName = c.CartId " +
            "where c.CartId = (select UserName from Orders where OrderId = (select MAX(OrderId) from Orders)) " +
            "group by c.AlbumId, c.[Count], a.Price)");
            DAO.UpdateTable(sql);
            Response.Redirect("OrderCompletedGUI.aspx");
        }
    }
}