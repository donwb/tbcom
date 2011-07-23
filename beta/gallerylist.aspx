<%@ Page Title="Traci Browning Photography: Nature photography of Yellowstone, Yosemite, and other National Parks." Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true"
    CodeFile="gallerylist.aspx.cs" Inherits="gallerylist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="results-gallery">
        <div id="nav-secondary">
            <h5>Available Galleries</h5>
            <div class="stream">
                <% LoadGalleries(); %>
            </div>
        </div>
    </div>
</asp:Content>
