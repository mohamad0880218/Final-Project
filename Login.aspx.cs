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




public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("Home.aspx");

        }
        else

            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        con.Open();
        
    
}
       protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sign-up.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        
        SqlCommand cmd = new SqlCommand("select username,password from register where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
        SqlDataReader sd = cmd.ExecuteReader();
        
        string pass = TextBox2.Text.ToString();
        string username = TextBox1.Text.ToString();
          
        
        if (sd.Read())
        {
           
            if ( pass.Equals(sd["password"].ToString(),StringComparison.Ordinal) &&  username.Equals(sd["username"].ToString(), StringComparison.Ordinal))
            {
                Session["user"] = TextBox1.Text;

                Response.Redirect("Home.aspx");
            }
          
            else
            {
                Response.Write("<script>alert('Incorrect  username or password .Please check and try again') </script>");

            }
        }
        
    }


protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin/Admin.aspx");
    }
}