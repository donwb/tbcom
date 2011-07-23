<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true"
    CodeFile="gallery.aspx.cs" Inherits="landscapes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="results-gallery">
        <div id="nav-secondary">
            <h5>
                <asp:Label ID="Label1" runat="server">
	    <%=CategoryName(Request.QueryString["galleryName"]) %>
	</asp:Label></h5>
            <div class="stream">
                <% LoadSelectedGallery(Request.QueryString["galleryName"]); %>
            </div>
        </div>
    </div>
    <!-- end: news & events -->
</asp:Content>
