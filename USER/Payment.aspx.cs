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


public partial class USER_Payment : System.Web.UI.Page
{
    public
     OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
    String a, b;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["cname"].ToString();
       b = Session["pay"].ToString();
        Label1.Text = a;
        Label2.Text = b;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Payment values('" + Label1.Text  + "','" + Label2.Text + "',@p1)";
        if (RadioButton1.Checked)
            cmd.Parameters.AddWithValue("@p1", RadioButton1.Text );
        else
            cmd.Parameters.AddWithValue("@p1", RadioButton2.Text );
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Label3.Visible = true;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            DropDownList1.Enabled = false;
            TextBox1.Enabled = false;
         }
        else
        {
            DropDownList1.Enabled = true;
            TextBox1.Enabled = true;

        }
            
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            DropDownList1.Enabled = true;
            TextBox1.Enabled = true;

        }
            
    }
}
