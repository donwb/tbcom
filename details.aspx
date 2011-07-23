<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div id="detail-display"> 

<table align="center" cellpadding="0" cellspacing="0" width="550"> 
	
    <tbody><tr><td align="left" valign="bottom">
        <%--<asp:Image style="max-width: 650px; max-height: 550px;" ID="mainImage" runat="server"  />--%>
       <object type="application/x-silverlight-2"  
        data="data:application/x-silverlight,"    
        width="670" height="452">  
            <param name="source" value="ClientBin/EnhancedViewer.xap"/>
            <param name="background" value="Transparent" /> 
            <param name="windowless" value="true"  />
            <param name="InitParams" value="<%=InitParams %>" /> 
        </object> 
    </td></tr>
           
	<tr><td align="left" valign="top">
	<a name="skus"></a><!-- Anchor point for when form is submitted -->
    
    <div style="margin: auto; width: 95%;">
    
        <h1><asp:Label ID="imageName" runat="server" Text="ImageName"></asp:Label></h1>
        
        <div style="border-top: 1px solid rgb(40, 40, 40); margin: 0pt; padding: 0pt; height: 1px;">&nbsp;</div> 
        
        <div style="margin: 0pt; padding: 0px 5px 0px 0px; width: 70%; float: left;">         
    
            <p><span style="font-style: italic; font-weight: bold;"><asp:Label ID="location" runat="server" Text="Label" /></span>
<br></p>
        
        </div>
        
        <div style="margin: 0pt; padding: 0pt; width: 28%; float: right;"><div style="padding-left: 5px;">
        
        
        <asp:Literal ID="priceSheet" runat="server" />
    <!--
    <br><b>print:</b><br>5x7: $10.00<br>8x10: $15.00<br>11x14: $25.00<br>16x20: $40.00<br>20x24: $75.00<br><br><b>framed:</b><br>8x10: $40.00<br>11x14: $50.00<br>16x20: $75.00<br>
     -->   
        </div>
                           
        <div style="border-bottom: 1px solid rgb(40, 40, 40); padding: 2px;">&nbsp;</div>
        
        <!-- Google Cart dropdown and button -->
        <div class="product">
            <input value="<%=this.Name %>" class="product-title" type="hidden">
            <input value="thumbs/<%=this.ImageName %>" class="product-image" type="hidden">
            <input class="product-weight" type="hidden" value="1"/>
            
            <% if (this.Genre == "panoramas")
               {
                    %>
                    
                <select class="product-attr-custom">
                    <option selected="selected">--Select--</option>
                    <option googlecart-set-product-price="60.00" value="12x24">12x24 - $60.00</option>
                    <option googlecart-set-product-price="45.00" value="10x20">10x20 - $45.00</option>
                    <option googlecart-set-product-price="100.00" value="12x24 Framed">12x24 Framed - $100.00</option>
                    <option googlecart-set-product-price="80.00" value="10x20 Framed">10x20 Framed - $80.00</option>
                </select>  
             
            
            <% }
               else
               {
                    %>
                <select class="product-attr-custom">
                    <option selected="selected">--Select--</option>
                    <option googlecart-set-product-price="550.00" value="40x60">40x60 - $550.00</option>
                    <option googlecart-set-product-price="250.00" value="30x40">30x40 - $250.00</option>
                    <option googlecart-set-product-price="150.00" value="24x30">24x30 - $150.00</option>
                    <option googlecart-set-product-price="90.00" value="20x24">20x24 - $90.00</option>
                    <option googlecart-set-product-price="60.00" value="16x20">16x20 - $60.00</option>
                    <option googlecart-set-product-price="45.00" value="11x14">11x14 - $45.00</option>
                    <option googlecart-set-product-price="30.00" value="8x10">8x10 - $30.00</option>
                    <option googlecart-set-product-price="800.00" value="40x60 Framed">40x60 Framed - $800.00</option>
                    <option googlecart-set-product-price="450.00" value="30x40 Framed">30x40 Framed - $450.00</option>
                    <option googlecart-set-product-price="300.00" value="24x30 Framed">24x30 Framed - $300.00</option>
                    <option googlecart-set-product-price="150.00" value="20x24 Framed">20x24 Framed - $150.00</option>
                    <option googlecart-set-product-price="100.00" value="16x20 Framed">16x20 Framed - $100.00</option>
                    <option googlecart-set-product-price="80.00" value="11x14 Framed">11x14 Framed - $80.00</option>
                    <option googlecart-set-product-price="60.00" value="8x10 Framed">8x10 Framed - $60.00</option>
                    <option googlecart-set-product-price="1000.00" value="40x60 Canvas">40x60 Canvas - $1000.00</option>
                    <option googlecart-set-product-price="650.00" value="30x40 Canvas">30x40 Canvas - $650.00</option>
                    <option googlecart-set-product-price="400.00" value="24x30 Canvas">24x30 Canvas - $400.00</option>
                    <option googlecart-set-product-price="250.00" value="20x24 Canvas">20x24 Canvas - $250.00</option>
                    <option googlecart-set-product-price="175.00" value="16x20 Canvas">16x20 Canvas - $175.00</option>
                    <option googlecart-set-product-price="125.00" value="11x14 Canvas">11x14 Canvas - $125.00</option>
                    <option googlecart-set-product-price="95.00" value="8x10 Canvas">8x10 Canvas - $95.00</option>
                </select>
                  
            <% } %>
            
            <p></p>
            <input value="15.00" class="product-price" type="hidden">
            
            <div title="Add to cart" role="button" tabindex="0" class="googlecart-add-button"></div>
            <p>Larger sizes available on commission.</p>
            <!-- <p>Shipping on all orders is a flat rate of: <span class="product-shipping-first">$10</span></p> -->
            
        </div>
	    
        </div>
        
        
    
    </div>
    
	</td></tr>
	</tbody>
</table>

</div>



</asp:Content>

