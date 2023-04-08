<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #ce3333;
        }
        .auto-style2 {
            width: 100px;
        }
        #Button3 {
         background-image:url('Pictures/bg%20s/bg1.jpg');
       
        }
        #TextBox1 {
          background-image:url('Pictures/bg%20s/bg1.jpg');
        }
           #TextBox2 {
          background-image:url('Pictures/bg%20s/bg1.jpg');
        }
    </style>
    <link href="css/Login.css" rel="stylesheet" />
</head>
<body background="Pictures/bg%20s/bg1.jpg">
   
    <form id="form1" runat="server">
         <center><font  size=60 color=red face="Times new roman"><b><i>RigPC</b></i></font></center>
        
        <div>
       
    <table  align="center" >
   
    <tr>
        <th>

        </th>
        <th align="left"><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="Pictures/user.png" height="80px" width="80px" /><br><h1>ADMIN LOGIN
                                                                                                                                                                            </h1></th>
    </tr>
    <tr>

     <th class="auto-style6">
         <br />
         <span class="auto-style1">Admin_ID</span>
     </th>
  
    <th class="auto-style7">
        <br />
        <br />
     <a> <asp:TextBox ID="TextBox1" runat="server" Width="159px" BackColor="black" BorderColor="#191919" BorderStyle="None" ForeColor="#33CC33"></asp:TextBox></a>
        <br />
        </th>
    </tr>
    <tr>
        <th class="auto-style3">  <font color="#ce3333">  <br />
         Password</font></th>
  
    <th class="auto-style4">
    &nbsp;<a><asp:TextBox ID="TextBox2" runat="server" Width="159px" ForeColor="#33CC33" BackColor="black" BorderColor="#191919" BorderStyle="None" TextMode="Password"></asp:TextBox></a>
     </th>
    </tr>
    <tr>
        <td class="auto-style3"></td>
    
    <td class="auto-style5">
    
    <b class="auto-style2">  <asp:Button ID="Button3" runat="server" Text="LOGIN" Height="23px" Width="67px" onclick="Button3_Click"   BorderStyle="None" ForeColor="#ce3333"></asp:Button></b>
   
    </td>
    </tr>
    </table>
  
        

    
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" BackColor="#191919" BorderColor="Blue" BorderStyle="Dotted" ForeColor="Yellow">USER-MODE</asp:LinkButton>
        

    
    
        </div>
    </form>
</body>
</html>
