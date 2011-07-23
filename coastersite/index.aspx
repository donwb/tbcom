<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        

        <div id="imageArea">
            <h2>Coasters:
            </h2>
            
            

            <% 
               
                LoadImages();
                
             %>   

 
        </div>
        
        <div id="topNav">
           <asp:HyperLink ID="prevSetLinkTop" runat="server">prev</asp:HyperLink>
           <asp:HyperLink ID="nextSetLinkTop" runat="server">next</asp:HyperLink>
       </div>
        <div id="footerNav">
            <asp:HyperLink ID="prevSetLink" runat="server">prev</asp:HyperLink>
            <asp:HyperLink ID="nextSetLink" runat="server">next</asp:HyperLink>
        </div>
        <p />
        <div id="bottomSpace" />
</asp:Content>

