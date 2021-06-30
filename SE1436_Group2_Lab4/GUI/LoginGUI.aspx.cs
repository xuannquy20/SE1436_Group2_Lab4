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
    public partial class LoginGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from users where username = @user and password = @pass");
            cmd.Parameters.AddWithValue("@user", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            DataTable dt = DAO.GetDataTable(cmd);
            if(dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                User u = new User
                {
                    UserName = dr["UserName"].ToString(),
                    Role = int.Parse(dr["role"].ToString()),
                    FirstName = dr["FirstName"].ToString(),
                    LastName = dr["LastName"].ToString(),
                    Address = dr["Address"].ToString(),
                    City = dr["City"].ToString(),
                    State = dr["State"].ToString(),
                    Country = dr["Country"].ToString(),
                    Phone = dr["Phone"].ToString(),
                    Email = dr["Email"].ToString()
                };
                Session["acc"] = u;
                Session["user"] = u.UserName;
                Session["role"] = u.Role;
                Response.Redirect("ShoppingGUI.aspx");
            }
            else
            {
                lblError.Text = "Username or Password invalid";
            }
        }
    }
}