using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Text;

public partial class details : System.Web.UI.Page
{
    private XElement _rootElement;

    private string _imageName;
    private string _name;

    protected void Page_Load(object sender, EventArgs e)
    {
        string imageId = Request.QueryString["id"];

        string doc = Server.MapPath("sitedata.xml");
        _rootElement = XElement.Load(doc);

        var query =
            from elmt in _rootElement.Elements("images").Elements("image")
            where elmt.Attribute("id").Value == imageId

            select new
            {
                Filename = elmt.Element("filename").Value,
                Name = elmt.Attribute("name").Value,
                Id = elmt.Attribute("id").Value,
                Location = elmt.Element("location").Value,
                Description = elmt.Element("description").Value
            };

        foreach (var item in query)
        {
            location.Text = item.Location;
            mainImage.ImageUrl = "images/" + item.Filename;
            imageName.Text = item.Name;
            this.Title = imageName.Text + " : " + location.Text;
            _name = item.Name;
            _imageName = item.Filename;
        }

        var printPrices =
            from elmt in _rootElement.Elements("images").Elements("image")
            where elmt.Attribute("id").Value == imageId
                from y in elmt.Elements("purchases").Elements("prints").Elements("print")

        select new
        {
            Size = y.Attribute("size").Value,
            Price = y.Attribute("price").Value
        };
        // Now set up the prices
        StringBuilder sb = new StringBuilder();
        sb.Append("<br><b>print:</b><br>");
        foreach (var item in printPrices)
        {
            sb.Append(item.Size + ": $" + item.Price + "<br>");
        }

        sb.Append("<br><b>framed:</b><br>");
        var framePrices =
            from elmt in _rootElement.Elements("images").Elements("image")
            where elmt.Attribute("id").Value == imageId
            from y in elmt.Elements("purchases").Elements("frames").Elements("frame")

            select new
            {
                Size = y.Attribute("size").Value,
                Price = y.Attribute("price").Value
            };
        foreach (var item in framePrices)
        {
            sb.Append(item.Size + ": $" + item.Price + "<br>");
        }


        priceSheet.Text = sb.ToString();

    }


    public string ImageName
    {
        get { return _imageName; }
    }

    public string Name
    {
        get { return _name; }
    }


}
