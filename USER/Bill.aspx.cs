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

public partial class USER_Bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblcname.Text = Session["cname"].ToString();
        lbldate.Text = System.DateTime.Now.ToShortDateString();
        lblreciptno.Text = Session["oid"].ToString ();
        lblpname.Text = Session["pname"].ToString();
        lblprice.Text = Session["pay"].ToString();
        double a, b, c, d;
        a = Convert.ToDouble(lblprice.Text);
        b = (a * 9) / 100;
        lblcgst.Text = b.ToString();
        c = (a * 9) / 100;
        lblsgst.Text = c.ToString();
        d = a + b + c;
        lbltotal.Text = d.ToString();

    }
}
