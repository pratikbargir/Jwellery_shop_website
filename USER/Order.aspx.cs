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


public partial class USER_Order : System.Web.UI.Page
{
    public
       OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
    //double a;
    String a,st, status = "inprocess";
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["cname"].ToString();
        TextBox1.Text = System.DateTime.Now.ToShortDateString();
        cn.Open();
        cmd.CommandText = "Select count (oid) from [order]";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());

        cn.Close();

        i++;
        id = i;
        Label8.Text = i.ToString ();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //for (int i = 0; i < DataList1.Items.Count; i++)
        //{
        //    Label lbl1 = DataList1.Items[i].FindControl("lblname") as Label;
        //    st = (lbl1.Text);
        //}
        //for (int i = 0; i < DataList1.Items.Count; i++)
        //{
        //    Label lbl = DataList1.Items[i].FindControl("lblprice") as Label;
        //    a = (lbl.Text);
        //}
        ////cn.Open();
        //cmd.CommandText = "insert into [Order] values('" + Label1.Text + "','" + TextBox1.Text + "','" + st + "','" + a + "','" + status + "')";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //Session["pay"] = a;
        //Response.Redirect("~/User/Payment.aspx");
        //foreach (DataListItem item in DataList1.Items)
        //{
        //    st = item.FindControl ("")
        //}


        for (int j = 0; j < DataList1.Items.Count; j++)
        {
            Label lbl1 = DataList1.Items[j].FindControl("lblname") as Label;
            st = (lbl1.Text);
        }
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            Label lbl2 = DataList1.Items[i].FindControl("lblprise") as Label;
            a = (lbl2.Text);
        }
        cn.Open();
        cmd.CommandText = "insert into [Order] values(" + id + ",'" + Label1.Text + "','" + TextBox1.Text + "','" + st + "','" + a + "','" + status + "','"+DropDownList1.Text+"','"+TextBox2.Text +"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
      //  Label8.Text = st;
        // Session["pay"] = a;
        Session["oid"] = Label8.Text;
        Session["pname"] = st;
        Session["pay"] = a;
        Response.Redirect("~/User/bill.aspx");
    }
    //protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    for (int i = 0; i < DataList1.Items.Count; i++)
    //    {
    //        Label lbl = DataList1.Items[i].FindControl("lable5") as Label;
    //        a = Convert.ToDouble(lbl.Text);
    //    }
    //    double c = Convert.ToInt32(DropDownList1.SelectedValue) * a;
    //    Label2.Text = c.ToString();

    //}
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    for (int i = 0; i < DataList1.Items.Count; i++)
    //    {
    //        Label lbl = DataList1.Items[i].FindControl("Label5") as Label;
    //        a = Convert.ToDouble(lbl.Text);
    //    }
    //    double c = Convert.ToInt32(DropDownList1.SelectedValue) * a;
    //    Label2.Text = c.ToString();

    //}
    protected void Button2_Click(object sender, EventArgs e)
    {
    //    for (int i = 0; i < DataList1.Items.Count; i++)
    //    {
    //        Label lbl1 = DataList1.Items[i].FindControl("Label7") as Label;
    //        st = (lbl1.Text);
    //    }
    //    for (int i = 0; i < DataList1.Items.Count; i++)
    //    {
    //        Label lbl2 = DataList1.Items[i].FindControl("lable2") as Label;
    //        a = (lbl2.Text);
    //    }
    //    cn.Open();
    //    cmd.CommandText = "insert into [Order] values("+id+",'" + Label1.Text + "','" + TextBox1.Text + "','" + st + "','" + a + "','" + status + "')";
    //    cmd.Connection = cn;
    //    cmd.ExecuteNonQuery();
    //    cn.Close();
    //   // Session["pay"] = a;
    //    Response.Redirect("~/User/Payment.aspx");
    }
}
