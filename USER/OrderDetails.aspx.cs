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
using System.Data.OleDb;
using System.Data;

public partial class USER_Order_Details : System.Web.UI.Page
{
    public
     OleDbConnection cn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
    int a;
    String st, status = "inprocess";
    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = Session["cname"].ToString();
        //cn.Open();
        //cmd.CommandText = "Select max(oid) from Order";
        //cmd.Connection = cn;
        //int j = Convert.ToInt32(cmd.ExecuteScalar());
        //cn.Close();
        //j++;
        //txtid.Text = j.ToString();
        
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btbconorder_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            Label lbl = DataList1.Items[i].FindControl("Label3") as Label;
            st=(lbl.Text).ToString ();
           
        }
         cn.Open();
        cmd.CommandText = "insert into Order values(@p1,@p2,@p3,@p4,@p5,@p6,@p6,@p7)";
        cmd.Connection = cn;
        cmd.Parameters.AddWithValue("@p1", txtid.Text);
        cmd.Parameters.AddWithValue("@p2", lblname.Text);
        cmd.Parameters.AddWithValue("@p3", txtorderdate.Text);
        cmd.Parameters.AddWithValue("@p4", Label2.Text);
        cmd.Parameters.AddWithValue("@p5", status);
        cmd.Parameters.AddWithValue("@p6", st);
        cmd.Parameters.AddWithValue("@p7", DropDownList1.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["pay"] = Label2.Text;
        Response.Redirect("~/master/Payment.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            Label lbl = DataList1.Items[i].FindControl("label5") as Label;
            a =Convert.ToInt32 (lbl.Text);
           
        }
        int c = Convert.ToInt32 (DropDownList1.SelectedValue) * a;
        Label2.Text = c.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count (oid) from Order ";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        i++;
        txtid.Text = i.ToString();
        
    }
}
