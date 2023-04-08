<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign-up.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Login.css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style1 {
            height: 120px;
            width: 318px;
        }
        .auto-style2 {
            height: 94px;
            width: 318px;
        }
        .auto-style3 {
            height: 71px;
            width: 318px;
        }
        .auto-style4 {
            height: 87px;
            width: 318px;
        }
        .auto-style5 {
            height: 83px;
            width: 318px;
        }
        .auto-style8 {
            height: 83px;
            width: 197px;
        }
        .auto-style9 {
            height: 87px;
            width: 197px;
        }
        .auto-style10 {
            height: 71px;
            width: 197px;
        }
        .auto-style11 {
            height: 94px;
            width: 197px;
        }
        .auto-style12 {
            height: 120px;
            width: 197px;
        }
        .auto-style13 {
            height: 84px;
            width: 197px;
        }
        .auto-style14 {
            height: 84px;
            width: 318px;
        }
        .auto-style15 {
            width: 197px;
        }
        .auto-style16 {
            left: 50%;
            top: 54%;
            width: 582px;
            height: 795px;
        }
        #Button3 {
            background-image: url('Pictures/bg%20s/bg1.jpg');
        }

        #TextBox1 {
            background-image: url('Pictures/bg%20s/bg1.jpg');
        }

        #TextBox3 {
            background-image: url('Pictures/bg%20s/bg1.jpg');
        }

        #TextBox6 {
            background-image: url('Pictures/bg%20s/bg1.jpg');
        }

        #TextBox9 {
            background-image: url('Pictures/bg%20s/bg1.jpg');
        }

        #TextBox5 {
            background-image: url('Pictures/bg%20s/bg1.jpg');
        }
    </style>
</head>
<body background="./Pictures/bg s/23964.jpg">
    <form id="form1" runat="server">
        <center><font  size=60 color=red face="Times new roman"><b><i>RigPC</b></i></font></center>
        <div>
            <center>

             <table class="auto-style16" >
    <tr>
        <th class="auto-style15"></th>
        <th align="left"><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="Pictures/user.png" height="80px" width="80px" /></th>
    </tr>
    <tr>
     <td class="auto-style13">
       <font color="red"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name</font>
    </td>
    <td class="auto-style14">
   <a> <asp:TextBox ID="TextBox1" runat="server" Width="183px" BackColor="#191919" BorderColor="#191919" BorderStyle="None" ForeColor="#33CC33" EnableTheming="True"></asp:TextBox></a>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredField" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </td>
  
    <tr>
    <td class="auto-style8"><font color="red">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User-Name</font></td>
    <td class="auto-style5">
   <a> &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="186px"  BorderStyle="None" ForeColor="#33CC33"  ></asp:TextBox></a>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>   
    <tr>
    <td class="auto-style9">
   <font color="red" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</font>
    </td>
    <td class="auto-style4">
        <br />
    <a><asp:TextBox ID="TextBox9" runat="server" Width="185px"  BorderStyle="None" ForeColor="#33CC33" TextMode="Password"  ></asp:TextBox></a>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="auto-style10">
  <font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail</font> 
    </td>
    <td class="auto-style3">
   <a> <asp:TextBox ID="TextBox5" runat="server" Width="187px" BorderStyle="None" ForeColor="#33CC33"></asp:TextBox></a>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox9" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td class="auto-style11"><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile-no</td>
    <td class="auto-style2">
   <a><asp:TextBox ID="TextBox6" runat="server" Width="196px" BorderStyle="None" ForeColor="#33CC33"></asp:TextBox></a>
    </td>
    </tr>
    <tr>
    <td class="auto-style12"></td>
    <td class="auto-style1">
   <b> <asp:Button ID="Button3" runat="server" Text="Sign-up" OnClick="Button3_Click"  BorderStyle="None" ForeColor="#ce3333" ></asp:Button></b>
    </td>
    </tr>
    </table>
            </center>
        </div>
    </form>
</body>
</html>
