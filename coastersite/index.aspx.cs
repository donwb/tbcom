using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessAssembly;

public partial class index : System.Web.UI.Page
{
    private int _nextSkipToken;
    private int _prefSkipToken;
    private int _totalImages;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Get the total number of images
        
        CoasterDBEntities entities = new CoasterDBEntities();
        var query = from t in entities.tblCoasters
                    where t.DisplayOrder > 0
                    select t;
        _totalImages = query.Count();


    }

    private int SetupSkipNumbers()
    {
        string qstring = Request.QueryString["skip"];

        if(qstring == null)
            return 0;

        int start = int.Parse(qstring);
        _nextSkipToken = start + 20;
        return start;

    }


    public void LoadImages()
    {

        int start = SetupSkipNumbers();

        string startNumber = Request.QueryString["skip"];

        CoasterDBEntities coasterEntities = new CoasterDBEntities();

        var query = (from t in coasterEntities.tblCoasters
                    where t.DisplayOrder > 0
                     select t).OrderBy(t => t.DisplayOrder).Skip(start).Take(20);
        

        foreach (var item in query)
        {
            string divStart = "<div id=\"imgSurround\">";
            string divEnd = "</div></div>";

            string img = "<img id=\"coasterImage\" src=\"images/" + item.Filename + "\" alt=\"" + item.Name + "\"/>";
            string txt = "<div id=\"imageText\">" + item.Name;

            Response.Write(divStart + img + txt + divEnd);


        }
        

        ConfigureNextLink();
        ConfigurePrevLink();

        
        
    }

    private void ConfigureNextLink()
    {
        // This is for the intial load.. to set it up correctly
        if (_nextSkipToken == 0)
            _nextSkipToken = 20;

        if (_nextSkipToken > _totalImages)
        {
            nextSetLink.NavigateUrl = "";
            nextSetLink.Text = "";
            nextSetLinkTop.NavigateUrl = "";
            nextSetLinkTop.Text = "";
        }
        else
        {
            nextSetLink.NavigateUrl = "index.aspx?skip=" + _nextSkipToken.ToString();
            nextSetLink.Text = "next";
            nextSetLinkTop.NavigateUrl = "index.aspx?skip=" + _nextSkipToken.ToString();
            nextSetLinkTop.Text = "next";
        }
    }

    private void ConfigurePrevLink()
    {
        int nextToken = _nextSkipToken - 40;
        if (nextToken < 0)
        {
            prevSetLink.NavigateUrl = "";
            prevSetLink.Text = "";
            prevSetLinkTop.NavigateUrl = "";
            prevSetLinkTop.Text = "";
        }
        else
        {
            prevSetLink.NavigateUrl = "index.aspx?skip=" + (_nextSkipToken - 40).ToString();
            prevSetLink.Text = "prev";
            prevSetLinkTop.NavigateUrl = "index.aspx?skip=" + (_nextSkipToken - 40).ToString();
            prevSetLinkTop.Text = "prev";

        }
    }

    public void GetSkiptokenStart()
    {
        string s = "index?skip=20";

        Response.Write(s);
    }

}