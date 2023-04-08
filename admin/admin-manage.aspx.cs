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
using System.Configuration;
using System.IO;

public partial class admin_admin_manage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Admin.aspx");
        }
        else
            con.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|Database.mdf; Integrated Security = True; MultipleActiveResultSets = True; Application Name = EntityFramework";
                //"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        con.Open();
        string squary = "select * from Cart";
        SqlCommand com = new SqlCommand(squary, con);
        SqlDataAdapter sda = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

    }
    protected void FileUpload1_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
            string img = "~/Upload/" + str.ToString();


            SqlCommand cmd = new SqlCommand("insert into Cart" + "(product_price,product_name,product_img)values(@price,@name,@imag)", con);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@imag", img);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("insert complete");
           
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "update Cart set  product_price='" + TextBox4.Text + "'where product_Id='" + TextBox3.Text + "' ";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Write("update complete");


        /* SqlCommand sc = con.CreateCommand();
         sc.CommandType = CommandType.Text;
         sc.CommandText = "Update Cart  set product_price='" + TextBox4.Text + "',product_name'" + TextBox5.Text + "' where product_Id='"+TextBox3.Text+"';";
         sc.ExecuteNonQuery();*/






        // con.Close();
        Response.Write("< script > alert('Updation Complete') </ script >");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "delete from Cart where  product_Id='" + TextBox3.Text + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
      
        Response.Write("<script>alert('deleted successfully') </script>");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("Admin");
        Session.RemoveAll();
        Response.Redirect("Admin.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        del();
        cmd.CommandText="delete from register where Id='"+TextBox6.Text+"'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
       
        Response.Write("<script>alert('user-removed') </script>");

    }
    private void del()
    {    SqlCommand sel =new SqlCommand("select username from register where Id='"+TextBox6.Text+"'",con);
        string Ab = "";
        SqlDataReader dr1 = sel.ExecuteReader();
        if (dr1.Read())
        {
            Ab = dr1.GetValue(0).ToString();
        }
        else
        {
            Response.Write("failure in USERNAME");
        }
        SqlCommand sc = new SqlCommand("delete from orders where username='" + Ab + "'",con);
        sc.ExecuteNonQuery();
    }
    protected void bt_Click(object sender, EventArgs e)
    {
        grid1.Visible = true;
        bt1.Visible = true;
        bt.Visible = false;
    }

    protected void bt1_Click(object sender, EventArgs e)
    {
        bt.Visible = true;
        bt1.Visible = false;
        grid1.Visible = false;
      
    }

    protected void bt2_Click(object sender, EventArgs e)
    {
        th_tr1.Visible = true;
        th_tr2.Visible = true;
        th_tr3.Visible = true;
        th_tr4.Visible = true;
        bt3.Visible = true;
        bt2.Visible = false;
    }

    protected void bt3_Click(object sender, EventArgs e)
    {
        th_tr1.Visible =false;
        th_tr2.Visible = false;
        th_tr3.Visible = false;
        th_tr4.Visible = false;
        bt2.Visible = true;
        bt3.Visible = false;
            
     }
    protected void in_up_Click(object sender, EventArgs e)
    {
        bt2.Visible = true;
        bt4.Visible = true;
        in_up.Visible = false;
        in_up2.Visible = true;
    }
    protected void in_up2_Click(object sender, EventArgs e)
    {
        bt2.Visible = false;
        bt4.Visible = false;
        in_up.Visible = true;
        in_up2.Visible = false;
    }
    protected void bt4_Click(object sender, EventArgs e)
    {
        th2_tr1.Visible = true;
        th2_tr2.Visible = true;
        th2_tr3.Visible = true;
        th2_tr4.Visible = true;
        bt4.Visible = false;
        bt5.Visible = true;

        
    }

    protected void bt5_Click(object sender, EventArgs e)
    {
        th2_tr1.Visible = false;
        th2_tr2.Visible = false;
        th2_tr3.Visible = false;
        th2_tr4.Visible = false;
        bt4.Visible = true;
        bt5.Visible = false;


    }





    protected void users_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        users2.Visible = true;
        users.Visible = false;
        removeuser.Visible = true;

    }

    protected void users2_Click(object sender, EventArgs e)
    {

        GridView2.Visible = false;
        users2.Visible = false;
        users.Visible = true;
        removeuser.Visible = false;
    }

    protected void removeuser_Click(object sender, EventArgs e)
    {
        removeuser.Visible = false;
        removeuser2.Visible = true;
        th3_tr1.Visible = true;
        th3_tr2.Visible = true;
       
    }

    protected void removeuser2_Click(object sender, EventArgs e)
    {
        removeuser.Visible = true;
        removeuser2.Visible =false;
        th3_tr1.Visible = false;
        th3_tr2.Visible = false;
    }
}