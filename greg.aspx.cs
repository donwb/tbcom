using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

public partial class greg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        DirectoryInfo di = new DirectoryInfo(Server.MapPath("forgreg"));
        FileInfo[] files = di.GetFiles();


        foreach (FileInfo fi in files)
        {
            sb.Append("<img src=\"forgreg/" + fi.Name + "\" /> <br/>" + fi.Name + "<p/>");

        }

        myLiteral.Text = sb.ToString();
    }
}