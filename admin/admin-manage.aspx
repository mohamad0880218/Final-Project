<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-manage.aspx.cs" Inherits="admin_admin_manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
  
    <link href="css/ADmin.css" rel="stylesheet" />
    </head>
<body  background="Pictures/My%20Post%201.png">
    <form id="form1" runat="server"> 
         

        <div class="head" >
            <table width="100%">
                <tr>
                    <th align='left'>
                       <img src="Pictures/profile.png" height="60px"  width="60px" id="profile" /> &nbsp;<font  color="orange" size="10"> <%Response.Write(Session["Admin"]); %></font><font color="red">(Admin)</font>

                    </th>
                    <th align="right">
                        <table>
                            <tr>
                                <th>
                                       <img src="Pictures/enter.png" height="50px" width="50px" />
                                </th>
                            </tr>
                            <tr>
                                <th>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton>
                                </th>
                            </tr>
                        </table>
                      
                          
                    </th>
                </tr>
            </table>
        </div>  <br />
           <br />
           <br />
        <h1> <asp:Button runat="server" ID="bt" OnClick="bt_Click"  Text="PRODUCTS" Visible="true" Font-Size="Large" Font-Bold="true" ForeColor="white" Height="34px" BackColor="limeGreen" BorderStyle="None" Width="292px"/> 
            &nbsp&nbsp <asp:Button  runat="server" ID="bt1" OnClick="bt1_Click" Text="X" Visible="false" Font-Size="Large" Font-Bold="true" ForeColor="white" Width="157px" BackColor="red"  BorderStyle="None" />
        </h1> <br />
       <center>
          
                    <asp:GridView ID="grid1" Visible="false" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
               <Columns>
                    <asp:BoundField  HeaderText="Product-ID" DataField="product_id"/>
                    <asp:BoundField  HeaderText="Product-Name"  DataField="product_name"/>
                    <asp:BoundField  HeaderText="Prdocut-Price" DataField="product_price"/>
                    

                    <asp:ImageField HeaderText="Product-Image"  DataImageUrlField="product_img"  ControlStyle-Height="100px" ControlStyle-Width="150px" >
                        <ControlStyle Height="120px" Width="130px"></ControlStyle>
                    </asp:ImageField>
                </Columns>

                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

            </asp:GridView>
            
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        &nbsp;<h1>
                  <tt>
                        <asp:Button runat="server" ID="in_up" Text=" Operations On Available ITEMS" BackColor="LightGreen" Font-Size="X-Large" BorderStyle="none" ForeColor="White" OnClick="in_up_Click" />
                      <asp:Button runat="server" ID="in_up2" Text="X" BackColor="red" Font-Size="X-Large" BorderStyle="none" ForeColor="White" OnClick="in_up2_Click" Visible="false" Width="127px" />

                  </tt>

              </h1>
            <table   width="80%">
            <tr >
                <th align="left" class="th1" >
                    <asp:Button Text=" INSERT NEW ITEM" runat="server" Visible="false"   ID="bt2" OnClick="bt2_Click" BorderStyle="None" Font-Size="Large" ForeColor="#edc9af" />
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;  &nbsp;  &nbsp;
                          &nbsp;  &nbsp;  &nbsp;
                         <asp:Button   runat="server" ID="bt3" OnClick="bt3_Click"  Text="X" Visible="false" Font-Size="Large" Font-Bold="true" ForeColor="#edc9af" Width="61px"  BorderStyle="None" />
                    
        
            <asp:Table ID="Table1" runat="server"  BorderStyle="Double" BorderColor="YellowGreen" BackColor="#808080">
                
                <asp:TableRow runat="server" id="th_tr1" Visible="false">
                    <asp:TableCell>
                      <tt>  Product_Name</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                       <a> <asp:TextBox ID="TextBox1" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" ></asp:TextBox></a>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" ID="th_tr2" Visible="false">
                    <asp:TableCell>
                       <tt> Product_Price</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                      <a>  <asp:TextBox ID="TextBox2" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None"></asp:TextBox></a>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" ID="th_tr3" Visible="false">
                    <asp:TableCell>
                      <tt>  Product_Image</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                      <a> <asp:FileUpload ID="FileUpload1" runat="server" Width="159px" OnLoad="FileUpload1_Load"  BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None"/></a>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow runat="server" ID="th_tr4" Visible="false">
                    <asp:TableCell>
                        .
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                       <b> <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" Height="23px"
                            Width="79px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" /></b>
                      
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table> 
            </th>
                <th align="right" class="th2" >
                    <asp:Button Text=" UPDATE ITEM " Visible="false" runat="server" ID="bt4" OnClick="bt4_Click" BorderStyle="None" Font-Size="Large" ForeColor="#edc9af" />
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;  &nbsp;  &nbsp;
                          &nbsp;  &nbsp;  &nbsp;
                         <asp:Button   runat="server" ID="bt5" OnClick="bt5_Click" Text="X" Visible="false" Font-Size="Large" Font-Bold="true" ForeColor="#edc9af" Width="61px"  BorderStyle="None" />
                 <asp:Table ID="Table2" runat="server"  BorderStyle="Double" BorderColor="YellowGreen" BackColor="#808080">
                    <asp:TableRow runat="server" ID="th2_tr1" Visible="false">
                    <asp:TableCell>
                     <tt>   Product_ID</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                       <a> <asp:TextBox ID="TextBox3" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None">Not changable</asp:TextBox></a>(enter to find item)
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow ID="th2_tr2" Visible="false" runat="server">
                    <asp:TableCell>
                     <tt>   Product_Price</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                      <a> <asp:TextBox ID="TextBox4" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None"></asp:TextBox></a>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow ID="th2_tr3" Visible="false" runat="server">
                    <asp:TableCell>
                      <tt>  Product_Name</tt>
                    </asp:TableCell>
                    <asp:TableCell>
                        <a><asp:TextBox ID="TextBox5" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None"></asp:TextBox></a>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableFooterRow ID="th2_tr4" Visible="false" runat="server">
                    <asp:TableCell>
                        .
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                      <b>  <asp:Button ID="Button2" runat="server" Text="Update"  OnClick="Button2_Click" Height="23px"
                            Width="79px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" Font-Bold="False" /></b>&nbsp;
                    <b>      <asp:Button ID="Button3" runat="server" Text="delete"  OnClick="Button3_Click" Height="23px"
                            Width="79px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" /></b>
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>
                    </th>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
        <p> <h1>
                 <asp:Button runat="server" ID="users" Text="USERS" BackColor="LightGreen" Font-Size="X-Large" BorderStyle="none" ForeColor="White" OnClick="users_Click" Width="196px" />
                      <asp:Button runat="server" ID="users2" Text="X" BackColor="red" Font-Size="X-Large" BorderStyle="none" ForeColor="White" OnClick="users2_Click" Visible="false" Width="104px" />
            </h1>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                   
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </p>
           <asp:Button runat="server" ID="removeuser" Text=" REMOVE USER" BackColor="LightGreen" Font-Size="X-Large" BorderStyle="none" ForeColor="White" OnClick="removeuser_Click" />
                      <asp:Button runat="server" ID="removeuser2" Text="X" BackColor="Red" Font-Size="X-Large" BorderStyle="none" ForeColor="White" OnClick="removeuser2_Click" Visible="false" Width="97px" />
          
           <table class="th1">
               <tr id="th3_tr1" runat="server" visible="false">
                   <th>
                      <tt>User-ID</tt>
                   </th>
                   <th>
                        <a><asp:TextBox ID="TextBox6" runat="server" Width="159px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None"></asp:TextBox></a>
                   </th>
               </tr>
               <tr id="th3_tr2" runat="server" visible="false">
                   <th></th>
                   <th>
                       <b>      <asp:Button ID="Button4" runat="server" Text="delete"  OnClick="Button4_Click" Height="23px"
                            Width="79px" BackColor="#EDC9AF" BorderColor="#EDC9AF" BorderStyle="None" />

                       </b>

                   </th>
               </tr>
           </table>
          </center>
    </form>
</body>
</html>
