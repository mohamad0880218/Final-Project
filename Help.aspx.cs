using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Help : System.Web.UI.Page

{
    SqlConnection conn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;

            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/user/problems" + str));

            string img = "~/user/" + str.ToString();
            string usr = Session["user"].ToString();
            cmd.CommandText = ("insert into problem (username,pic,detail,problem,email,name) values ('" + usr + "','" + img + "','" + TextBox3.Text + "','" + DropDownList2.Text + "','" + TextBox2.Text + "','" + TextBox1.Text + "')");
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('hey " + Session["user"] + "we will contact you soon on your email .pls check your mail wihtin 8 hours in spam box')</script>");
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            DropDownList2.SelectedValue = null;

        }
        else
        {
            string usr = Session["user"].ToString();
            cmd.CommandText = ("insert into problem (username,detail,problem,email,name) values ('" + usr + "','" + TextBox3.Text + "','" + DropDownList2.Text + "','" + TextBox2.Text + "','" + TextBox1.Text + "')");
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('hey "+Session["user"]+"we will contact you soon on your email .pls check your mail wihtin 8 hours in spam box')</script>");
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            DropDownList2.SelectedValue = null;

        }
    }
}