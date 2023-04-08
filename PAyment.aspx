<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PAyment.aspx.cs" Inherits="PAyment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 235px;
        }
        .auto-style19 {
            width: 49%;
            height: 765px;
        }
        .auto-style20 {
            width: 235px;
            height: 185px;
        }
        .auto-style21 {
            height: 185px;
        }
        .auto-style23 {
            height: 1007px;
        }
      
    </style>
      
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <table  runat="server" background="Pictures/pay/pexels-min-an-683402.jpg"   width="100%" class="auto-style23">
    <tr>

        <th align="center">

       
     <table runat="server" align="center" class="auto-style19"  bgcolor="gray">
        <tr>
            
            <th class="auto-style20">
                 <asp:Label ID="Label1" runat="server" Text="PRODUCT_NAME"></asp:Label>
            </th>
            <th class="auto-style21">
                 <asp:Label ID="TextBox1" runat="server" Width="410px" ></asp:Label>
            </th>
              <th>
            <asp:Image ID="Image1" runat="server"  Height="250px " Width="250px" BackColor="White"/></th>
        </tr>
        <tr>
            <th class="auto-style18">
                 <asp:Label ID="Label2" runat="server" Text="NAME OF BUYER"></asp:Label>
            </th>
            <th>
                <asp:Label ID="TextBox2" runat="server" Width="410px"></asp:Label>
            </th>
          
        </tr>
        <tr>
            <th class="auto-style18">
                <asp:Label ID="Label3" runat="server" Text="PRICE"></asp:Label> </th>
            <th>
                 <asp:Label ID="TextBox3" runat="server" Width="410px"></asp:Label>
            </th>
        </tr>
        <tr>
            <th class="auto-style18">
                 <asp:Label ID="Label4" runat="server" Text="ADDRESS"></asp:Label>
            </th>
            <th>
                 <asp:TextBox ID="TextBox4" runat="server" Width="410px"></asp:TextBox>
               
            </th>
        </tr>
        <tr>
            <th class="auto-style18">
                 <asp:Label ID="Label5" runat="server" Text="CHOOSE PAYMENT OPTION"></asp:Label>
            </th>
            <th>

                <asp:DropDownList ID="DropDownList2" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" runat="server" Width="410px">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>PAYTM</asp:ListItem>
                    <asp:ListItem>AMAZON PAY</asp:ListItem>
                    <asp:ListItem>GOOGLE PAY</asp:ListItem>
                    <asp:ListItem>CASH ON DELIEVERY</asp:ListItem>
                </asp:DropDownList>

              

            </th>
        </tr>
        <tr>
            <th class="auto-style18">

            </th>
            <th>
                <asp:Button ID="Button1" runat="server" Text="Cancel Order" OnClick="Button1_Click" BackColor="#FF3300" BorderColor="#FF3300" BorderStyle="None" Width="120px" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button2" runat="server" Text="CONFIRM ORDER" OnClick="Button2_Click" BackColor="green" BorderColor="green" BorderStyle="None" Width="120px" />
                
                
                

            </th>
        </tr>
    </table>
   
            
   
    </th>
    </tr>>
    </table>
   
 
    
    </asp:Content>

