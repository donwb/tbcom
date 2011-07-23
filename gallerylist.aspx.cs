using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class gallerylist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoadGalleries()
    {
        string filename = Server.MapPath("sitedata.xml");
        var xml = XElement.Load(filename);

        string[] genres = {"landscapes", "cityscapes", "panoramas"};

        for(int i=0;i<genres.Length;i++)
        {
            // Get the thumbnails for this gallery
            var query =
              from e in xml.Elements("images").Elements("image")
              where e.Attribute("genre").Value == genres[i]
              select new
              {
                  Filename = e.Element("thumbnail").Value,
                  Name = e.Attribute("name").Value,
                  Id = e.Attribute("id").Value,
                  Genre = e.Attribute("genre").Value
              };

            
            foreach (var item in query)
            {
                string output = string.Format(@"<div class=""tt-a"" rage=""51""><span class=""tt-w""><span class=""shadow"">
                    <a href=""gallery.aspx?galleryName={4}""><img src=""thumbs/{1}"" alt=""{2}""></a>
                    <p><div style=""color:#666666; font:14px Arial, Helvetica, sans-serif"">
                    {4}</div></p></span></span></div>",
                 item.Filename, item.Filename, item.Name, item.Id, item.Genre);

                Response.Write(output);
                break;  // only doing 1 from each
            }
        }

        



    }

}
