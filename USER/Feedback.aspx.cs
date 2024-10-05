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

public partial class USER_Feedback : System.Web.UI.Page
{
    public
    OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
    public void clear()
    {
        txtname.Text = " ";
        txtcity.Text = " ";
        
        txtmob.Text = " ";
        txtemail.Text = " ";
        txtfeedback.Text = " ";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Female_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Feedback values('"+ txtname.Text +"','"+ txtcity.Text +"','"+ DropDownList1.Text +"',"+ txtmob.Text +",@p1,'"+ txtemail.Text +"','"+ txtfeedback.Text +"')";
        if (txtmale.Checked == true)
            cmd.Parameters.AddWithValue("@p1", txtmale.Text);
        else
            cmd.Parameters.AddWithValue("@p1", txtfemale.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Data Saved')</script>");

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = " ";
        txtcity.Text = " ";
      
        txtmob.Text = " ";
        txtemail.Text = " ";
        txtfeedback.Text = " ";
    }
}
