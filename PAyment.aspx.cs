using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class PAyment : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
        SqlConnection connn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|Database.mdf; Integrated Security = True; MultipleActiveResultSets = True; Application Name = EntityFramework");
        if (Session["buy"] == null)
        {
            Response.Redirect("Home.aspx");

        }
        else
        {

            connn.Open();
                int ses = Convert.ToInt32(Session["buy"]);
                 
                SqlCommand comm = new SqlCommand("select product_name,product_price,product_img from Cart where product_Id='" + ses + "' ",connn); 
                
            SqlDataReader dr =comm.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = Session["user"].ToString();
                TextBox3.Text = dr.GetValue(1).ToString();
                Image1.ImageUrl = dr.GetValue(2).ToString();
            }
                         

        }   
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("buy");
        Response.Redirect("Home.aspx");
        DropDownList2.Visible = false;
    }

   protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex.Equals(1))
        {
            Response.Redirect("https://paytm.com/");
        }

        else if (DropDownList2.SelectedIndex.Equals(2))
        {
            Response.Redirect("https://www.amazon.in/amazonpay/home");
        }
        else if (DropDownList2.SelectedIndex.Equals(3))
        {
            Response.Redirect("https://pay.google.com/");

        }
        else if (DropDownList2.SelectedIndex.Equals(4))
        {
            
        }
      
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Hey!!" + Session["user"] + "Order Placed Successfully') </script>");



    }

   
}
