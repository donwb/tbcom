<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- welcome message -->
    <!-- 
    Removing image and instead have a form for entering email address
  -->
    <div style="padding-top: 20px; text-align: center;">
        
        <object type="application/x-silverlight-2"  
        data="data:application/x-silverlight,"    
        width="670" height="452">  
            <param name="source" value="ClientBin/EnhancedViewer.xap"/>
            <param name="background" value="Transparent" /> 
            <param name="windowless" value="true"  />
            <param name="InitParams" value="<%="CurrentImage=" + HomeImage %>" /> 
        </object>
    </div>
  
    <div id="page-header">
        <h4>What's New</h4>
        <%--<asp:PlaceHolder ID="newsPlaceholder" runat="server"></asp:PlaceHolder>--%>
        <div id="show-item">
            <div style="text-align: left;">
                <div style="font-size:9pt">
                    <p style="padding-bottom:10px">
                    We are between show seasons which mean its summertime.  This is typically time for traveling to see friends and family.  It’s also time to photograph new places to add to my portfolio for upcoming events.  This off-season has taken us to New Mexico and Colorado, up next is Florida and maybe up north.
                    </p>
                    <p style="padding-bottom:10px">
                    There’s still work being done in the studio outside of shooting new images… Still replenishing stock at the artist co-op and gallery, as well as filling online orders.  You will see our new booth at the fall shows and I’m toying with new ways to present the photographs.  Hope you and your loved ones are having a great summer.
                    </p>
                    Traci
                </div> 
                <p />
            </div>
        </div>
        
    </div>

    <!-- end: news & events -->
</asp:Content>
