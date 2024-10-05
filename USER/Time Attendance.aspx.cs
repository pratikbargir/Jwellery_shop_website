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

public partial class USER_Time_Attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string a;
        //for(int i=0;i<DataList1.Items.Count ;i++)
        //{
            //Label lbl=DataList1.Items [i].FindControl ("label1") as Label ;
            //a = lbl.Text;
            //Session["lblpid"] = a;
        //}

        ImageButton btn = sender as ImageButton;
        a = btn.CommandArgument;
        Session["lblpid"] = a;
        Response.Redirect("~/USER/Login.aspx");
    }



    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
