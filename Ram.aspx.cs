﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Data.Sql;
using System.Configuration;
using System.IO;



public partial class Rams : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|Database.mdf; Integrated Security = True; MultipleActiveResultSets = True; Application Name = EntityFramework";
        //"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        con.Open();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int pro_id = 54;
        string ses = string.Empty;
        ses = Convert.ToString(Session["user"]);
        SqlCommand sc = new SqlCommand("select product_name,product_img,product_price from Cart where product_Id='" + pro_id + "'", con);
        SqlDataReader ds = sc.ExecuteReader();
        if (ds.Read())
        {
            string s1 = ds.GetValue(0).ToString();
            string s2 = ds.GetValue(1).ToString();
            string s3 = ds.GetValue(2).ToString();
            SqlCommand cmd = new SqlCommand("insert into orders" + "(product_id,username,product_img,product_price,product_name)values(@id,'" + ses + "','" + s2 + "','" + s3 + "','" + s1 + "')", con);

            cmd.Parameters.AddWithValue("@id", pro_id);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Hey!!" + Session["user"] + "Item Added To Cart Successfully') </script>");

        }

        else
        {
            con.Close();

        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        int pro_id = 55;
        string ses = string.Empty;
        ses = Convert.ToString(Session["user"]);
        SqlCommand sc = new SqlCommand("select product_name,product_img,product_price from Cart where product_Id='" + pro_id + "'", con);
        SqlDataReader ds = sc.ExecuteReader();
        if (ds.Read())
        {
            string s1 = ds.GetValue(0).ToString();
            string s2 = ds.GetValue(1).ToString();
            string s3 = ds.GetValue(2).ToString();
            SqlCommand cmd = new SqlCommand("insert into orders" + "(product_id,username,product_img,product_price,product_name)values(@id,'" + ses + "','" + s2 + "','" + s3 + "','" + s1 + "')", con);

            cmd.Parameters.AddWithValue("@id", pro_id);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Hey!!" + Session["user"] + "Item Added To Cart Successfully') </script>");

        }

        else
        {
            con.Close();

        }
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        int pro_id = 56;
        string ses = string.Empty;
        ses = Convert.ToString(Session["user"]);
        SqlCommand sc = new SqlCommand("select product_name,product_img,product_price from Cart where product_Id='" + pro_id + "'", con);
        SqlDataReader ds = sc.ExecuteReader();
        if (ds.Read())
        {
            string s1 = ds.GetValue(0).ToString();
            string s2 = ds.GetValue(1).ToString();
            string s3 = ds.GetValue(2).ToString();
            SqlCommand cmd = new SqlCommand("insert into orders" + "(product_id,username,product_img,product_price,product_name)values(@id,'" + ses + "','" + s2 + "','" + s3 + "','" + s1 + "')", con);

            cmd.Parameters.AddWithValue("@id", pro_id);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Hey!!" + Session["user"] + "Item Added To Cart Successfully') </script>");

        }

        else
        {
            con.Close();

        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        int pro_id = 57;
        string ses = string.Empty;
        ses = Convert.ToString(Session["user"]);
        SqlCommand sc = new SqlCommand("select product_name,product_img,product_price from Cart where product_Id='" + pro_id + "'", con);
        SqlDataReader ds = sc.ExecuteReader();
        if (ds.Read())
        {
            string s1 = ds.GetValue(0).ToString();
            string s2 = ds.GetValue(1).ToString();
            string s3 = ds.GetValue(2).ToString();
            SqlCommand cmd = new SqlCommand("insert into orders" + "(product_id,username,product_img,product_price,product_name)values(@id,'" + ses + "','" + s2 + "','" + s3 + "','" + s1 + "')", con);

            cmd.Parameters.AddWithValue("@id", pro_id);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Hey!!" + Session["user"] + "Item Added To Cart Successfully') </script>");

        }

        else
        {
            con.Close();

        }
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        int pro_id = 58;
        string ses = string.Empty;
        ses = Convert.ToString(Session["user"]);
        SqlCommand sc = new SqlCommand("select product_name,product_img,product_price from Cart where product_Id='" + pro_id + "'", con);
        SqlDataReader ds = sc.ExecuteReader();
        if (ds.Read())
        {
            string s1 = ds.GetValue(0).ToString();
            string s2 = ds.GetValue(1).ToString();
            string s3 = ds.GetValue(2).ToString();
            SqlCommand cmd = new SqlCommand("insert into orders" + "(product_id,username,product_img,product_price,product_name)values(@id,'" + ses + "','" + s2 + "','" + s3 + "','" + s1 + "')", con);

            cmd.Parameters.AddWithValue("@id", pro_id);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Hey!!" + Session["user"] + "Item Added To Cart Successfully') </script>");

        }

        else
        {
            con.Close();

        }
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        int pro_id = 59;
        string ses = string.Empty;
        ses = Convert.ToString(Session["user"]);
        SqlCommand sc = new SqlCommand("select product_name,product_img,product_price from Cart where product_Id='" + pro_id + "'", con);
        SqlDataReader ds = sc.ExecuteReader();
        if (ds.Read())
        {
            string s1 = ds.GetValue(0).ToString();
            string s2 = ds.GetValue(1).ToString();
            string s3 = ds.GetValue(2).ToString();
            SqlCommand cmd = new SqlCommand("insert into orders" + "(product_id,username,product_img,product_price,product_name)values(@id,'" + ses + "','" + s2 + "','" + s3 + "','" + s1 + "')", con);

            cmd.Parameters.AddWithValue("@id", pro_id);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Hey!!" + Session["user"] + "Item Added To Cart Successfully') </script>");

        }

        else
        {
            con.Close();

        }
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("buy");
        Session["buy"] = 59;
        Response.Redirect("PAyment.aspx");
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("buy");
        Session["buy"] = 58;
        Response.Redirect("PAyment.aspx");
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("buy");
        Session["buy"] = 57;
        Response.Redirect("PAyment.aspx");
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("buy");
        Session["buy"] = 56;
        Response.Redirect("PAyment.aspx");
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("buy");
        Session["buy"] = 55;
        Response.Redirect("PAyment.aspx");
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("buy");
        Session["buy"] = 54;
        Response.Redirect("PAyment.aspx");
    }
}