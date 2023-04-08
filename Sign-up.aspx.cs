using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string pass = TextBox9.Text.ToString();
       
     /*   if (pass!=null)
        {
            if (pass.Length >=7 && pass.Any(char.IsDigit) )
            {
                SqlCommand sc = con.CreateCommand();
                sc.CommandType = CommandType.Text;
                sc.CommandText = "insert into register (username,password,phn,email,name)values('" + TextBox3.Text + "','" + TextBox9.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "','" + TextBox1.Text + "')";
                sc.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert(' Account created Successfully') </script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password reuiqrements not met or fields are empty') </script>");
            }
        }
        //code for submit
       
     */  SqlCommand sc = con.CreateCommand();
        sc.CommandType = CommandType.Text;
        sc.CommandText = "insert into register (username,password,phn,email,name)values('" + TextBox3.Text + "','" + TextBox9.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "','" + TextBox1.Text + "')";
        sc.ExecuteNonQuery();

        con.Close();
        Response.Write("<script>alert(' Account created Successfully') </script>");
        Response.Redirect("Login.aspx");

    }
}