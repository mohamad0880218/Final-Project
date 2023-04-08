<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/head.css" rel="stylesheet" />
  
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <center>
         <div  runat="server" class="out-box">
             <div runat="server" class="in-box">
                 <img src="Pictures/HEAD/wp7314769.jpg"  width="1887px" height="663px"/>
                 <img  src="Pictures/HEAD/wp8606667.jpg"             height="663px"  width="1887px" />
                 <img   src="Pictures/HEAD/wp8606677.jpg" width="1887px"  height="663px" />
                 <img  src="Pictures/HEAD/wp9162262.jpg" height="663px" width="1887px"  />

             </div>
         </div>
     
     
         &nbsp;<br />
         <br />

         <br />
         <br />
         <br />
         <br />

        <div runat="server" class="outerbox">
	        <div class="sliderbox" runat="server">
	                <img src="Pictures/pc/download%20(1).jfif" width="500px" height="400px"/>
                    <img src="Pictures/pc/download%20(1).png"  width="500px" height="400px" />
                     <img src="Pictures/pc/download%20(2).jfif" width="500px" height="400px"/>
                    <img src="Pictures/pc/download%20(3).jfif" width="500px" height="400px"/>
	        </div>
        </div>

        </center>
        <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
        <br>
        <br>
        <div class="hovr">
          <center>
            <asp:Table ID="Table2" runat="server"  HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell Width="500px">
                     <a href="Monitor.aspx" runat="server">
                          <img src="Pictures/pc/mon1.jfif" 
                              widht="250px" align="left" style="width: 300px; height: 196px;" /></a><br />
                    </asp:TableCell>
                    <asp:TableCell Width="500px">
                           <a href="Processors.aspx"> 
                              <img src="Pictures/pc/Processor.jpg" 
                                  widht="250px" align="left" style="width: 300px; height: 196px;" /></a>
                    </asp:TableCell>
                    <asp:TableCell>
                    <a href="Cabinet.aspx">  
                          <img src="Pictures/pc/cab1.jfif" 
                              widht="250px" align="left" style="width: 300px; height: 196px;" /></a>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                         <a href="Monitor.aspx">Monitor's<br><img src="Pictures/search--v2.png" height="50px" width="50px" />
                         </a>
                    </asp:TableCell>
                    <asp:TableCell>
                         <a href="Processors.aspx"> Processor's<br><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
                    </asp:TableCell>
                    <asp:TableCell>
                         <a href="Cabinet.aspx"> Cabinet's<br><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

      <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <asp:Table ID="Table1" runat="server"  HorizontalAlign="Center">
    <asp:TableHeaderRow>
    <asp:TableCell>
    <a href="Coolers.aspx"><img src="Pictures/pc/cooler.jfif"style="width: 300px; height: 196px;"></a>
    </asp:TableCell>
    <asp:TableCell>
     <a href="Accessories.aspx"><img src="Pictures/pc/access.jfif"style="width: 300px; height: 196px;"></a>
    </asp:TableCell>
    <asp:TableCell>
      <a href="Motherboard.aspx"><img src="Pictures/pc/mb.jfif"style="width: 300px; height: 196px;"></a>
    </asp:TableCell>
   
    </asp:TableHeaderRow>
    <asp:TableFooterRow>
    <asp:TableCell Width="500px">
    <a href="Coolers.aspx">Cooler's<br><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
    </asp:TableCell>
    <asp:TableCell Width="500px">
    <a href="Accessories.aspx">Accessory's<br><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
    </asp:TableCell>
    <asp:TableCell>
    <a href="Motherboard.aspx">Motherboard's<br><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
    </asp:TableCell>
    </asp:TableFooterRow>
    </asp:Table>
              
    
    
 
     <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <asp:Table ID="Table4" runat="server"  HorizontalAlign="Center">
    <asp:TableHeaderRow>
    <asp:TableCell>
    <a href="Storage%20devices.aspx"> <img src="Pictures/pc/ssd.jfif"style="width: 300px; height: 196px;"></a>
    </asp:TableCell>
    <asp:TableCell>
     <a href="Ram.aspx"><img src="Pictures/pc/ram.jfif"style="width: 300px; height: 196px;"></a>
    </asp:TableCell>
    <asp:TableCell>
     <a href="PowerSupply.aspx"><img src="Pictures/pc/power.jfif"style="width: 300px; height: 196px;"></a>
    </asp:TableCell>
   
    </asp:TableHeaderRow>
    <asp:TableFooterRow>
    <asp:TableCell Width="500px">
    <a href="Storage%20devices.aspx">SSD's<br /><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
    </asp:TableCell>
    <asp:TableCell Width="500px">
    <a href="Ram.aspx">Ram's<br><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
    </asp:TableCell>
    <asp:TableCell>
    <a href="PowerSupply.aspx">PowerSupply's<br><img src="Pictures/search--v2.png" height="50px" width="50px" /></a>
    </asp:TableCell>
    </asp:TableFooterRow>
    </asp:Table>
    </div>
     <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <center>
          <h2> <font color="#ce3333" face="times new roman">OUR PREBUILT CUSTOM PC' COLLECTION</font></h2>
        <div id="ob">
    <div id="slider">
           &nbsp;<img src="Pictures/pc/pexels-photo-7199145.jpeg"height="500px" width="700px"   />
           <img src="Pictures/pc/wp4584984.jpg" height="500px" width="700px" />
           <img src="Pictures/pc/moniotr.jpg" height="500px" width="700px"/>
           <img src="Pictures/pc/pexels-photo-5366225.jpeg"height="500px" width="700px" />
           </div>
    </div>
  <br /><br /><br />
       
    </center>

</asp:Content>
 