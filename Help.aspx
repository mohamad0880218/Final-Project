<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width:100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
  <table runat="server" background="Pictures/pay/pexels-min-an-683402.jpg" class="auto-style18" >
      <tr>
    <th>
    <center>
     <asp:Label ID="Label1" runat="server" Text=" YOUR NAME"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name  must be entered" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
       <br />
     <asp:Label ID="Label2" runat="server" Text="EMAIL ADDRESS"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is necesssary" ForeColor="#FF3300"></asp:RequiredFieldValidator>
       <br />
       <br />
       <asp:DropDownList ID="DropDownList2" runat="server" Height="50px" Width="332px">
           <asp:ListItem>TYPE Of PROBLEM</asp:ListItem>
           <asp:ListItem>PRODUCT RELATED</asp:ListItem>
           <asp:ListItem>WEBSITE RELATED</asp:ListItem>
           <asp:ListItem>PAYMENT ERRORS</asp:ListItem>
           <asp:ListItem>PAYMENT OPTIONS</asp:ListItem>
       </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="PLS select problem type" ForeColor="#FF3300"></asp:RequiredFieldValidator>
       <br />
       <br />
     <asp:Label ID="Label3" runat="server" Text="WHAT PROBLEM ARE YOU FACING IN DETAIL "></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="TextBox3" runat="server" Height="272px" TextMode="MultiLine" Width="354px" ></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Pls give us a detail information" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
     <asp:Label ID="Label4" runat="server" Text="ATTACH SCREENSHOT"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />

        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Green" Height="63px" OnClick="Button1_Click" Width="170px" />
        <br />
        <br />
        <br />
        <br />
        <br />

    </center>
        </th>
          </tr>
      </table>
</asp:Content>

