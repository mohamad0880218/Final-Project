using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlCommand cmd1 = new SqlCommand();
    SqlConnection con1 = new SqlConnection();
    SqlDataAdapter sd1 = new SqlDataAdapter();
    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
            Response.Write("session expired");
        }
       
        else
            con1.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        string ses = string.Empty;

        ses = Convert.ToString(Session["user"]);
        string squary = "select * from register where username='"+ses+"'";

      SqlCommand com = new SqlCommand(squary, con1);
      SqlDataAdapter sda = new SqlDataAdapter(com);
      DataTable dt = new DataTable();
      sda.Fill(dt);
      grid1.DataSource = dt;
      grid1.DataBind();


        con1.Open();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex.Equals(1))
        {
            Response.Redirect("Ram.aspx");
        }

        else if (DropDownList1.SelectedIndex.Equals(2))
        {
            Response.Redirect("Processors.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(3))
        {
            Response.Redirect("PowerSupply.aspx");

        }
        else if (DropDownList1.SelectedIndex.Equals(4))
        {
            Response.Redirect("Coolers.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(5))
        {
            Response.Redirect("Motherboard.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(6))
        {
            Response.Redirect("Storage devices.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(7))
        {
            Response.Redirect("Cabinet.aspx");

        }
        else if (DropDownList1.SelectedIndex.Equals(8))
        {
            Response.Redirect("Accessories.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(9))
        {
            Response.Redirect("Monitor.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session.Remove("user");
        Session.Remove("Admin");
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
        
       




    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Help.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Community.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        Session.Remove("user");
        Session.Remove("Admin");
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Account.aspx");
    }

   
}
