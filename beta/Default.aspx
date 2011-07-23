<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- welcome message -->
    <div style="padding-top: 20px; text-align: center;">
        <!-- <img src="homepageimage.jpg" alt="Welcome to Thru The Shutter"> -->
        <asp:Image ID="homeImage" runat="server" />
    </div>
    <!-- end: welcome message -->
    <div id="page-header">
        <h4>
            What's New</h4>
        <asp:PlaceHolder ID="newsPlaceholder" runat="server"></asp:PlaceHolder>
    </div>
    <!-- end: news & events -->
</asp:Content>
