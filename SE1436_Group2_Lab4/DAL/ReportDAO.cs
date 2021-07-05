using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Lab3_Template.DAL
{

    class ReportDAO
    {
        static string strConn = ConfigurationManager.ConnectionStrings["MusicStoreConnectionString"].ConnectionString;
        static public DataTable GetOrderByDate(string from, string to)
        {
            String sqlSelect = "select a.* from orders a " +
              "where a.OrderDate between @from and @to ";

            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                SqlCommand cmd = new SqlCommand(sqlSelect);
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                cmd.Parameters.AddWithValue("@from", from);
                cmd.Parameters.AddWithValue("@to", to);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }
        static public DataTable GetAllOrders()
        {
            String sqlSelect = "select *from orders";
            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                SqlCommand cmd = new SqlCommand(sqlSelect);
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;

                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }
        static public DataTable GetOrderByInformation(string from, string to, string firstname, string country)
        {
            String sqlSelect = "select a.* from orders a " +
              "where a.Country like @c and a.FirstName like @f  ";
            try
            {
                int check = 0;
                if (from != "" && to != "")
                {
                    sqlSelect += "and a.OrderDate between @from and @to";
                    check = 1;
                }
                SqlConnection conn = new SqlConnection(strConn);
                SqlCommand cmd = new SqlCommand(sqlSelect);
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                if (check == 1)
                {
                    cmd.Parameters.AddWithValue("@from", from);
                    cmd.Parameters.AddWithValue("@to", to);
                }
                cmd.Parameters.AddWithValue("@c", "%" + country + "%");
                cmd.Parameters.AddWithValue("@f", "%" + firstname + "%");
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }
        static public DataTable getOrderDetaisByOrderID(string orderid)
        {
            String sqlSelect = "select * from OrderDetails where OrderId=@o";
            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                SqlCommand cmd = new SqlCommand(sqlSelect);
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                cmd.Parameters.AddWithValue("@o", orderid);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }
    }
}
