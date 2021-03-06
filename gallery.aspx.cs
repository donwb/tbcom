﻿using System;
using System.Collections.Generic;
using System.Linq;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class landscapes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Request.QueryString["galleryName"];
        if ((s == null) || (s == string.Empty))
        {
            Response.StatusCode = 404;
            Response.End();
        }
    }

    protected string CategoryName(string galleryName)
    {
        return galleryName[0].ToString().ToUpper() + galleryName.Substring(1);
    }


    protected void LoadSelectedGallery(string galleryName)
    {
        string filename = Server.MapPath("sitedata.xml");
        var xml = XElement.Load(filename);


        // Get the thumbnails for this gallery
        var query =
          from e in xml.Elements("images").Elements("image")
          where e.Attribute("genre").Value ==  galleryName.ToLower()
            select new
            {
              Filename = e.Element("thumbnail").Value,
              Name = e.Attribute("name").Value,
              Id = e.Attribute("id").Value,
              Orientation = e.Attribute("orientation").Value
            };

        foreach(var item in query)
        {
            // The conditional is for formatting..  not adding a width value for the portraits right now..
            string output;
            switch (item.Orientation)
            {
                case "landscape":
                    output = string.Format(@"<div class=""tt-a"" rage=""51""><span class=""tt-w""><span class=""shadow"">
                    <a href=""details.aspx?id={3}""><img src=""thumbs/{1}"" alt=""{2}"" height=""143""></a></span></span></div>",
                                        item.Filename, item.Filename, item.Name, item.Id);
                    break;
                case "panorama":
                    output = string.Format(@"<div class=""tt-a"" rage=""51""><span class=""tt-w""><span class=""shadow"">
                    <a href=""details.aspx?id={3}""><img src=""thumbs/{1}"" alt=""{2}"" height=""118"" width=""310""></a></span></span></div>",
                                        item.Filename, item.Filename, item.Name, item.Id);
                    break;

                default:
                    output = string.Format(@"<div class=""tt-a"" rage=""51""><span class=""tt-w""><span class=""shadow"">
                    <a href=""details.aspx?id={3}""><img src=""thumbs/{1}"" alt=""{2}""></a></span></span></div>",
                                        item.Filename, item.Filename, item.Name, item.Id);
                    break;



            }


            Response.Write(output);
        }

    }

}
