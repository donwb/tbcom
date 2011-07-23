using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Xml.Linq;

public partial class snow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        DirectoryInfo di = new DirectoryInfo(Server.MapPath("SnowImages"));
        string namesFile = di.FullName + "\\names.xml";

        FileInfo[] files = di.GetFiles();
        var xml = XElement.Load(namesFile);

        foreach (FileInfo fi in files)
        {
            if (fi.Name.Contains("jpg"))
            {
                var query = from elem in xml.Elements()
                            where elem.Attribute("filename").Value == fi.Name
                            select elem;

                string tempName = null;
                foreach (var element in query)
                {
                    tempName = element.Value;
                }

                string name = tempName == null ? fi.Name : tempName;

                sb.Append("<img src=\"SnowImages/" + fi.Name + "\" /> <br/>" + name + "<p/>");

            }
        }
        myLiteral.Text = sb.ToString();
    }
}