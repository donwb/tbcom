<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div id="detail-display"> 

<table align="center" cellpadding="0" cellspacing="0" width="550"> 
	
    <tbody><tr><td align="left" valign="bottom">
        <asp:Image style="max-width: 650px; max-height: 550px;" ID="mainImage" runat="server" />
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
            <select class="product-attr-custom">
                <option selected="selected" googlecart-set-product-price="15.00" value="8x10">8x10 - $15.00</option>
                <option googlecart-set-product-price="25.00" value="11x14">11x14 - $25.00</option>
                <option googlecart-set-product-price="40.00" value="16x20">16x20 - $40.00</option>
                <option googlecart-set-product-price="70.00" value="20x24">20x24 - $70.00</option>
                <option googlecart-set-product-price="40.00" value="8x10 Framed">8x10 Framed - $40.00</option>
                <option googlecart-set-product-price="40.00" value="11x14 Framed">11x14 Framed - $50.00</option>
                <option googlecart-set-product-price="40.00" value="16x20 Framed">16x20 Framed - $75.00</option>
            </select><p></p>
            <input value="15.00" class="product-price" type="hidden">
            
            <div title="Add to cart" role="button" tabindex="0" class="googlecart-add-button"></div>
            
        </div>
	    
        </div>/ 
        
        
    
    </div>
    
	</td></tr>
	</tbody>
</table>

</div>



</asp:Content>

