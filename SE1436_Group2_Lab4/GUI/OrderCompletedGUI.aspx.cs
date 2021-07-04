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
    public partial class OrderCompletedGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String sql = "select max(OrderId) as 'orderid' from orders";
                DataTable dt = DAO.GetDataTable(sql);
                DataRow dr = dt.Rows[0];
                string id = dr["orderid"].ToString();
                Label1.Text = "Order " + id + " is saved!";
            }
        }
    }
}