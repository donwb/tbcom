<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="saveourstateparks.aspx.cs" Inherits="saveourstateparks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
        
        
        <div id="show-item">
        <div style="text-align: left;">
        <div style="font-size:10pt">
        <p style="margin-top:10px">
        The above image was taken in Big Sur, California and it is at risk of closing to the public due to California's budget crisis. 150 parks are in danger of closing part of the year or having their daily hours of operation reduced.   Some are already functioning at reduced capacity and are falling apart due to the $1 billion backlog of maintenance and repairs that need to be performed.  The Governor is planning to further reduce the funding for state parks next year, resulting in even less access to some of our nation's greatest assets.  Currently, for every $1 the state funds to the parks, tourists are spending almost $3 in local businesses.  
        </p>
        
        <p style="margin-top:10px">
        If you are also passionate about preserving state parks, please follow the link below to support adequately funding the state parks.
        </p>

        <p style="margin-top:10px"> Thank you very much, Traci  </p>
    
        </p>
        <p>
        <div style="padding-top: 10px; font-weight: bolder" > <a href="http://www.calparks.org/takeaction/#Advocacy_Efforts" style="font-size:19pt">Save Our State Parks</a> </div>
        </p>
        
        </div> 
    
        <p />
    
    </div>
    </div>      
    </div>
    
</asp:Content>

