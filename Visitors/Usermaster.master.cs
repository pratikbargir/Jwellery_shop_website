﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Visitors_Usermaster : System.Web.UI.MasterPage
{
    String a;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["name1"].ToString(); ;
        Label1.Text = a.ToString ();

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
