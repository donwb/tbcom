using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    private string _homeImage;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Get the homepage image
        SetHomeImage();

        //GetNewsItems();

        
    }

    private void SetHomeImage()
    {
        string filename = Server.MapPath("sitedata.xml");
        XElement xml = XElement.Load(filename);

        var q =
            from x in xml.Elements("homeImages").Elements("image")
            select new
            {
                Image = x.Value
            };

        string image = null;
        foreach (var item in q)
        {
            image = item.Image;
        }

        HomeImage = image;
        //homeImage.ImageUrl = image;
    }

    private void GetNewsItems()
    {
        //Now get the first couple news items
        string filename = Server.MapPath("news.xml");
        XElement xml = XElement.Load(filename);


        var newsItems =
            from x in xml.Elements("items").Elements("newsItem")
            select new
            {
                Headline = x.Element("headline").Value,
                Date = x.Element("date").Value,
                Detail = x.Element("detail").Value
            };

        int count = 0;
        foreach (var item in newsItems)
        {
            if(count == 2) break;
            Control uc = LoadControl("~/NewsUserControl.ascx");

            Control c = uc.FindControl("NewsDate");
            ((Label)c).Text = item.Date;

            Control c2 = uc.FindControl("Headline");
            ((Label)c2).Text = item.Headline;

            Control c3 = uc.FindControl("Detail");
            ((Label)c3).Text = item.Detail;


            //snewsPlaceholder.Controls.Add(uc);
            count++;
        }
}

    public string HomeImage
    {
        set
        {
            _homeImage = value;

        }
        get
        {
            return string.Format("http://{0}:{1}{2}", Request.Url.Host, Request.Url.Port, Page.ResolveUrl("~/" + _homeImage));
        }

    }

}
