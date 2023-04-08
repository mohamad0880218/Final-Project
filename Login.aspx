<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <link href="css/Login.css" rel="stylesheet" />
   
    <style type="text/css">
        #Text1
        {
            width: 231px;
        }
        #password2
        {
            width: 232px;
        }
        .style3
        {
            width: 144px;
            height: 145px;
        }
        .style4
        {
            width: 226px;
            height: 145px;
        }
        .style11
        {
            width: 144px;
            height: 75px;
        }
        .style12
        {
            width: 226px;
            height: 75px;
        }
        .style13
        {
            width: 144px;
            height: 89px;
        }
        .style14
        {
            width: 226px;
            height: 89px;
        }
        .style19
        {
            width: 91px;
            height: 110px;
        }
        .style20
        {
            width: 322px;
            height: 110px;
        }
        .style23
        {
            height: 71px;
            width: 91px;
        }
        .style24
        {
            width: 322px;
            height: 71px;
        }
        .style25
        {
            height: 58px;
            width: 91px;
        }
        .style26
        {
            width: 322px;
            height: 58px;
        }
        .style27
        {
            height: 51px;
            width: 91px;
        }
        .style28
        {
            width: 322px;
            height: 51px;
        }
        .style29
        {
            height: 63px;
            width: 91px;
        }
        .style30
        {
            width: 322px;
            height: 63px;
        }
        .style31
        {
            height: 60px;
            width: 91px;
        }
        .style32
        {
            width: 322px;
            height: 60px;
        }
        .style35
        {
            height: 55px;
        }
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            width: 210px;
            height: 89px;
        }
        .auto-style5 {
            width: 210px;
            height: 145px;
        }
        .auto-style6 {
            width: 123px;
            height: 95px;
        }
        .auto-style7 {
            width: 226px;
            height: 95px;
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
            #Button2 {
         background-image:url('Pictures/bg%20s/bg1.jpg');
       
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Text1_onclick() {

        }

// ]]>
    </script>
</head>
<body background="./Pictures/bg s/23964.jpg";>
    <form id="form1" runat="server">
        <center style="margin-left: 40px"><font size="60" color="red" face="Times new roman"><i><b>GamingRig</b></i></font></center>
      
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" BackColor="#191919" BorderColor="Blue" BorderStyle="Dotted" ForeColor="Yellow">Admin-Mode</asp:LinkButton>
        

    
        <table align="center" >

            <tr>
                <th></th>
                <th align="left">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="Pictures/user.png" height="80px" width="80px" /><br>
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOGIN
                    </h1>
                </th>
            </tr>
            <tr>

                <th class="auto-style6">
                    <br />
                    <font color="#ce3333">
                        <br />
                        Username</font>
                </th>

                <th class="auto-style7">
                    <br />
                    <br />
                    <a>
                        <asp:TextBox ID="TextBox1" runat="server" Width="159px" BackColor="#191919" BorderColor="#191919" BorderStyle="None" ForeColor="#33CC33"></asp:TextBox></a>
                    <br />
                </th>
            </tr>
            <tr>
                <th class="auto-style3"><font color="#ce3333">
                    <br />
                    Password</font></th>

                <th class="auto-style4">&nbsp;<a><asp:TextBox ID="TextBox2" runat="server" Width="159px" ForeColor="#33CC33" BackColor="#191919" BorderColor="#191919" BorderStyle="None" TextMode="Password"></asp:TextBox></a>
                </th>
            </tr>
            <tr>
                <td class="auto-style3"></td>

                <td class="auto-style5">

                    <b>
                        <asp:Button ID="Button3" runat="server" Text="login" Height="23px" Width="67px" OnClick="Button3_Click" BackColor="#191919" BorderColor="#191919" BorderStyle="None" ForeColor="#CE3333"></asp:Button></b>
                    <b>
                        <asp:Button ID="Button2" runat="server" Text="create acc" Height="23px"
                            Width="79px" OnClick="Button4_Click" BackColor="#191919" BorderColor="#191919" BorderStyle="None" ForeColor="#CE3333" /></b>
                </td>
            </tr>
        </table>
        <br />




    </form>
</body>
</html>
