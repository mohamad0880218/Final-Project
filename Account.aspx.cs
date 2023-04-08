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

public partial class u : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            GridView2.DataBind();
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
          
        }
       
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
            string ses = string.Empty;
            ses = Convert.ToString(Session["user"]);

            con.Open();
            string squary = "select * from register where  username='" + ses + "'";
            SqlCommand com = new SqlCommand(squary, con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            grid1.DataSource = dt;
            grid1.DataBind();
        Sum();
        

           



    }
    



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string sess = string.Empty;

        sess = Convert.ToString(Session["user"]);
       // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
       


        if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/user/" + str));

                string img = "~/user/" + str.ToString();


            string pass,nam,email;
            pass = TextBox4.Text;
            nam = TextBox3.Text;
            email = TextBox5.Text;

            /* cmd.CommandText = "update register set  password='" + TextBox4.Text + "',name='" + TextBox3.Text + "',email='" + TextBox5.Text + "',dp='" + img + "' where username='" + sess + "' ";
             cmd.Connection = con;
             cmd.ExecuteNonQuery();
             Response.Write("update complete");
             con.Close();*/


            if (pass == "" && nam == "" && email == "")
            {
                cmd.CommandText = "update register set  dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("PLS ENTER VALUE's");

            }

            else if (email != "" && (nam == "" && pass == ""))
            {
                cmd.CommandText = "update register set  email='" + TextBox5.Text + "',dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete only mail");

            }

            else if (pass != "" && (nam == "" && email == ""))
            {
                cmd.CommandText = "update register set  password='" + TextBox4.Text + "',dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete only pass");

            }
            else if ((pass != "" && email != "") && nam == "")
            {
                cmd.CommandText = "update register set  password='" + TextBox4.Text + "',email='" + TextBox5.Text + "',dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete wihtout dp name");

            }

            else if (nam != "" && (pass == "" && email == ""))
            {

                cmd.CommandText = "update register set  name='" + TextBox3.Text + "',dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update comple only name");

            }
            else if ((pass != "" && nam != "") && email == "")
            {
                cmd.CommandText = "update register set  password='" + TextBox4.Text + "',name='" + TextBox3.Text + "',dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete wihtout mail");

            }
            else if (pass == "" && (nam != "" && email != ""))
            {
                cmd.CommandText = "update register set name='" + TextBox3.Text + "', email='" + TextBox5.Text + "',dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("NAME  EMAIL ");

            }
            else
            {
                cmd.CommandText = "update register set  password='" + TextBox4.Text + "',name='" + TextBox3.Text + "',email='" + TextBox5.Text + "',dp='" + img + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete");
                con.Close(); 
            }




        }
       else
            {
            string pass, nam, email;
            pass = TextBox4.Text;
            nam = TextBox3.Text;
            email = TextBox5.Text;

            if (pass == "" && nam == "" && email == "")
            {

                Response.Write("PLS ENTER VALUE's");

            }
          
            else if (email !="" && (nam == "" && pass == ""))
            {
                cmd.CommandText = "update register set  email='" + TextBox5.Text + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete only mail");

            }

            else if (pass != "" && (nam == "" && email == ""))
            {
                cmd.CommandText = "update register set  password='" + TextBox4.Text + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete only pass");

            }
            else if ((pass !="" && email !="") && nam == "")
            {
                cmd.CommandText = "update register set  password='" + TextBox4.Text + "',email='" + TextBox5.Text + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete wihtout dp name");

            }
           
            else if (nam != "" && (pass == "" && email == ""))
            {

                cmd.CommandText = "update register set  name='" + TextBox3.Text + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update comple only name");

            }
            else if ((pass != "" && nam != "") && email == "")
            {
                cmd.CommandText = "update register set  password='" + TextBox4.Text + "',name='" + TextBox3.Text + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete wihtout mail");
               
            }
            else if (pass == "" && (nam != "" && email != ""))
            {
                cmd.CommandText = "update register set name='" + TextBox3.Text + "', email='" + TextBox5.Text + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("NAME  EMAIL ");

            }
            else
            {





                cmd.CommandText = "update register set  password='" + TextBox4.Text + "',name='" + TextBox3.Text + "',email='" + TextBox5.Text + "' where username='" + sess + "' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("update complete");
            }
                con.Close();
            }
        
        
        
    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        Button3.Visible = true;
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        Button3.Visible = false;
    }
    


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label rno = GridView1.Rows[e.RowIndex].FindControl("Label2") as Label;
        string mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        string updatedata = "delete from orders where product_id="+rno.Text;

       
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        SqlCommand cd = new SqlCommand();
        cd.CommandText = updatedata;
        cd.Connection = conn;
        cd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        conn.Close();
        Response.Redirect("Account.aspx");

       

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        string num =( gr.Cells[3].Text);
        TextBox6.Text = num.ToString();
        int a =int.Parse (TextBox6.Text) *1;
        int b;
        for (b = 1; b <= a; b++)
        {
            
            if (a == b)
            {
                Session["buy"] = b;
                Response.Write(Session["buy"]);
                Response.Redirect("PAyment.aspx");
            }
        
        }



       
           
    }

 
    private void  Sum()
    {
        Label6.Text = "0";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            Label6.Text = Convert.ToString(double.Parse(Label6.Text) + double.Parse(GridView1.Rows[i].Cells[2].Text));
        }
        Label8.Text = "0";
        Label8.Text = Convert.ToString(GridView1.Rows.Count);
    }
   
}