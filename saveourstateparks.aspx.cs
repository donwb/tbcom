using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class saveourstateparks : System.Web.UI.Page
{

    private string _homeImage;

    protected void Page_Load(object sender, EventArgs e)
    {
        SetHomeImage();

    }

    private void SetHomeImage()
    {
        string filename = Server.MapPath("sitedata.xml");
        XElement xml = XElement.Load(filename);

        var q =
            from x in xml.Elements("sosImage").Elements("image")
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