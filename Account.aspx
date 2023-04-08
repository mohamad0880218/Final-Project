<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="u"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/head.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 758px;
        }
        .auto-style2 {
            width: 213px;
            height: 119px;
        }
        .auto-style4 {
            width: 114px;
            height: 94px;
            margin-right: 2px;
        }
        .auto-style5 {
            height: 200px;
        }
        .auto-style6 {
            width: 124px;
            height: 119px;
        }
        .auto-style7 {
            height: 119px;
        }
        .auto-style8 {
            width: 100%;
            height: 492px;
        }
        .auto-style9 {
            width: 119px;
            height: 119px;
        }
    </style>
    <link href="admin/css/ADmin.css" rel="stylesheet" />
</head>
<body  background="Pictures/My%20Post%201.png">
    <form id="form1" runat="server"> 
         

        <div class="head" >

            <table width="100%">
                <tr>
                    <th align='left' class="auto-style1">
                        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" BorderColor="#191919" BackColor="#191919" BorderStyle="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>

                                <asp:ImageField HeaderText="" DataImageUrlField="dp">
                                    <ControlStyle Height="70px" Width="60px"></ControlStyle>

                                </asp:ImageField>
                            </Columns>
                        </asp:GridView>

                        <li><a href="Account.aspx" class="hell"><%Response.Write(Session["user"]); %></a></li>


                    </th>
                    <th align="right">

                        <table align="right">
                            <tr>
                                <th>
                                    <a href="Home.aspx">
                                        <img src="Pictures/domotics.png" height="50px" width="50px" /></a></th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>
                                <th>
                                    <a href="Community.aspx">
                                        <img src="Pictures/diversity.png" height="50px" width="50px" /></a></th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>

                                <th>
                                    <a href="Help.aspx">
                                        <img src="Pictures/comments.png" height="40px" width="40px" /></a>
                                </th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>
                                <th><a href="Account.aspx">
                                    <img src="Pictures/cart.png" height="50px" width="50px" /></a></th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>
                                <th>
                                    <img src="Pictures/enter.png" height="50px" width="50px" />&nbsp;
                                </th>
                            </tr>
                            <tr>
                                <th>
                                    <li><a href="Home.aspx" class="hell">Home</a></li>

                                </th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>
                                <th>
                                    <li><a href="Community.aspx" class="hell">Community</a></li>
                                </th>
                                <th>&nbsp;</th>

                                <th>&nbsp;</th>

                                <th>
                                    <li><a href="Help.aspx" class="hell">help&support</a></li>
                                </th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>
                                <th>
                                    <li><a href="Account" class="hell">Cart</a></li>
                                </th>

                                <th>&nbsp;</th>
                                <th>&nbsp;</th>


                                <th>
                                    <li>
                                        <asp:LinkButton ID="LinkButton1" CssClass="hell" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton></li>
                                </th>
                            </tr>
                        </table>

                    </th>
                </tr>
            </table>
        </div>
        <br />
       <center>
          
          <b> <asp:Button ID="Button3" runat="server" Text="X" OnClick="Button3_Click" Visible="false" BackColor="Red" ForeColor="White" Width="83px"  ></asp:Button>
           <asp:GridView ID="GridView2" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource2" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                   <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                   <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                   <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
                   <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                   <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                   <asp:BoundField DataField="dp" HeaderText="dp" SortExpression="dp" />
               </Columns>
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
               <RowStyle BackColor="White" />
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
           </asp:GridView>
           </b>

            
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [register] WHERE ([username] = @username)">
                        <SelectParameters>
                            <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                        </SelectParameters>
           </asp:SqlDataSource>
          <h> <asp:Button ID="Button2" runat="server" Text="VIEW DATA" OnClick="Button2_Click" ForeColor="Red" BackColor="Black" Height="52px" Width="158px"   ></asp:Button></h>

            
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
         
        <p>
            &nbsp;</p>
           <br />
        &nbsp;<h1> UPDATE &nbsp;PERSONAL&nbsp; INFO</h1>
            <table   width="80%">
            <tr>
                
                <th align="center" class="th2" >
      <center>
            <asp:Table ID="Table2" runat="server"  BorderStyle="Double" BorderColor="YellowGreen" BackColor="black" >
                  <asp:TableRow >
                    <asp:TableCell>
                     <tt>   NAME</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                       <a> <asp:TextBox ID="TextBox3" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" AutoPostBack="True"></asp:TextBox></a>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow >
                    <asp:TableCell>
                     <tt> NEW  PASSWORD</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                      <a> <asp:TextBox ID="TextBox4" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" ></asp:TextBox></a>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow >
                    <asp:TableCell>
                      <tt> EMAIL </tt>
                    </asp:TableCell>
                    <asp:TableCell>
                        <a><asp:TextBox ID="TextBox5" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None"></asp:TextBox></a>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow  >
                    <asp:TableCell>
                        <tt>PROFILE_PIC</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="159px"></asp:FileUpload>
                    </asp:TableCell>
                </asp:TableRow>                      
                        
                <asp:TableRow  >
                    <asp:TableCell >
                        .
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center"  >
                      <b>  <asp:Button ID="Button1" runat="server" Text="Update"  OnClick="Button1_Click1" Height="23px"
                            Width="79px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" Font-Bold="False" /></b>&nbsp;
                  
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
          </center>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders] WHERE ([username] = @username)" DeleteCommand="DELETE FROM [orders] WHERE [Order_Id] = @Order_Id" InsertCommand="INSERT INTO [orders] ([product_id], [username], [quantity]) VALUES (@product_id, @username, @quantity)" UpdateCommand="UPDATE [orders] SET [product_id] = @product_id, [username] = @username, [quantity] = @quantity WHERE [Order_Id] = @Order_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Order_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="product_id" Type="Int32" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="quantity" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="product_id" Type="Int32" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="quantity" Type="Int32" />
                            <asp:Parameter Name="Order_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                 <asp:Label runat="server" Font-Size="70px" ForeColor="White" BackColor="Green">

                                 CART
                    <img src="Pictures/cart.png" height="50px" width="50px" />
                     </asp:Label>

            
                    <br />
                    TOTAL ITEMS IN CART
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />

            
                    <asp:Label ID="Label7" runat="server" Text="TOTAL PRICE"></asp:Label>
                    <asp:Label ID="Label6" runat="server"></asp:Label>

            
                    <br />

            
                   <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="Order_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                       
                             <Columns>
                                   <asp:TemplateField HeaderText="PRODUCT_NAME">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                                </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                                 <asp:ImageField  DataImageUrlField="product_img" HeaderText="IMAGE" >
                                 </asp:ImageField>
                                 
                                 <asp:BoundField DataField="product_price" HeaderText="PRODUCT_PRICE" InsertVisible="False" ReadOnly="True"  SortExpression="product_price" />
                                
                                   <asp:BoundField DataField="product_id" HeaderText="ORDER_ID" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />

                                  
                           
                          
                                   <asp:BoundField DataField="Order_Id" HeaderText="PRODUCT_ID" SortExpression="Order_Id" />

                                  
                           
                          
                            <asp:TemplateField HeaderText="QUANTITY">
                                <ItemTemplate>
                                   
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                    
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                           
                                   <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/Pictures/pc/bn.png"   />
                                   
                           
                                   <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" BackColor="Red" ForeColor="White" > REMOVE</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                                
                        </Columns>
                            
                             <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                             <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                             <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                             <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                             <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#594B9C" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#33276A" />
                            
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <asp:LinqDataSource ID="ORDER" runat="server">
                    </asp:LinqDataSource>
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    
                    <br />
                    
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </th>
                </tr>
            </table>
       
        
          </center>
    </form>
              <table runat="server" bgcolor="#191919" class="auto-style8" >
                <tr>
                    <th class="auto-style5">
                        <table runat="server" align="center" >
                            <tr>
                                <th class="auto-style9" bgcolor="red">
                                    <img src="Pictures/masterpage/cell-phone.png" class="auto-style4" />
                                </th>
                                <th class="auto-style2">
                                     
                                    <br />
                                     
                                  <font color="Red">   CALL US:+919478639168&nbsp;  US:+919478639168&nbsp; </font>
                    
                                </th>
                           
                                <th bgcolor="red" class="auto-style6">
                                    <img src="Pictures/masterpage/send-mass-email.png"  height="95px" />
                                </th>
                                <th class="auto-style7">
                                    <font color="Red">   MAIL US:mdr486861@gmail.coom&nbsp; </font>
                                </th>
                            </tr>
                        </table>
                        
                    </th>
                </tr>
                <tr>
                    <th>
                        <font color="Red"> FOLLOW US ON</font>
                        <table runat="server" align="center">
                           
                            <tr>
                                <th>
                                   <a href=""  ><img src="Pictures/masterpage/1-2-facebook-download-png-thumb.png" height="95px" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </th>
                                <th>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="" > <img src="Pictures/masterpage/10-2-youtube-png-clipart-thumb.png" height="95px" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                </th>
                                <th>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <a href="" ><img src="Pictures/masterpage/6-2-instagram-png-pic-thumb.png" height="95px" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </th>
                                <th>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="" > <img src="Pictures/masterpage/6-2-twitter-png-image-thumb.png" height="95px" /></a>
                                </th>
                            </tr>
                        </table>
                    </th>
                </tr>
            </table>
       
        
          </body>
</html>
