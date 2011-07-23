using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Xml.Linq;

public partial class carole : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        DirectoryInfo di = new DirectoryInfo(Server.MapPath("FlowerImages"));
        string namesFile = di.FullName + "\\names.xml";

        
        var xml = XElement.Load(namesFile);
        var query = from x in xml.Elements("name") select x;
        foreach (XElement elem in query)
        {
            sb.Append("<img src=\"FlowerImages/" + elem.FirstAttribute.Value + "\" /> <br/>" + elem.Value + "<p/>");
        }
       
        myLiteral.Text = sb.ToString();
    }
}