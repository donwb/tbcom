<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="meg.aspx.cs" Inherits="meg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<p />
<div class="product">
            <input value="Clermont Hotel" class="product-title" type="hidden">
            <input value="thumbs/Clermont-hotel.jpg" class="product-image" type="hidden">
            <input class="product-weight" type="hidden" value="1"/>
            
            
               
                   
                <select class="product-attr-custom">
                    
                    <option googlecart-set-product-price="22.50" value="8x10">8x10 - $22.50</option>
                    
                </select>
                  
            
            
            <input value="22.50" class="product-price" type="hidden">
            
            <div title="Add to cart" role="button" tabindex="0" class="googlecart-add-button"></div>
            
</div>            
        

</asp:Content>

