using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class USER_Gold_Mangalsutra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        string a;
        ImageButton btn = sender as ImageButton;
        a = btn.CommandArgument;
        Session["pid"] = a;
        Response.Redirect("~/USER/Product.aspx");
    }
}
