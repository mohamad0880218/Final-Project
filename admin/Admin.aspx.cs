using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Data.Sql;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("admin-manage.aspx");

        }
        else

            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        con.Open();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        string user = TextBox1.Text.Trim();
        SqlCommand cmd = new SqlCommand("select admin_id,password from owner where admin_id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
        // con.Open();
        SqlDataReader sd = cmd.ExecuteReader();
        string pass = TextBox2.Text.ToString();
        string username = TextBox1.Text.ToString();


        if (sd.Read())
        {
            if (pass.Equals(sd["password"].ToString(), StringComparison.Ordinal) && username.Equals(sd["admin_id"].ToString(), StringComparison.Ordinal))
            {
                Session["Admin"] = TextBox1.Text;


                Response.Redirect("admin-manage.aspx");
            }

            else
            {
                Response.Write("<script>alert('Incorrect  username or password .Please check and try again') </script>");

            }
           

        }
       else
        {
            Response.Write("<script>alert('Incorrect  username or password .Please check and try again') </script>");

        }
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:51500/Login.aspx");
    }
}