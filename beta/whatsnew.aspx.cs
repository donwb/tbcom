using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class whatsnew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string file = Server.MapPath("news.xml");
        var xml = XElement.Load(file);

        var query =
          from l in xml.Elements("items").Elements("newsItem")
          select new
          {
  	        Headline = l.Element("headline").Value,
	        Date = l.Element("date").Value,
	        Detail = l.Element("detail").Value
          };

        foreach (var item in query)
        {
            Control uc = LoadControl("~/NewsUserControl.ascx");

            Control c = uc.FindControl("NewsDate");
            ((Label)c).Text = item.Date;

            Control c2 = uc.FindControl("Headline");
            ((Label)c2).Text = item.Headline;

            Control c3 = uc.FindControl("Detail");
            ((Label)c3).Text = item.Detail;


            newsPlaceholder.Controls.Add(uc);
        }

        
        //this.Controls.Add(c1);

    }
}
