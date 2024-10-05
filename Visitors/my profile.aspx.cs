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
using System.Data;
using System.Data.OleDb;

    public partial class Visitors_my_profile : System.Web.UI.Page
{
    OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update [Login] set Name = '" + TextBox1.Text + "',sex='" + TextBox4.Text + "',Address='" + TextBox2.Text + "',Zipcode='" + TextBox10.Text + "',City='" + TextBox9.Text + "',State='" + TextBox8.Text + "',Mobno='" + TextBox5.Text + "',Telno='" + TextBox6.Text + "',Fax='" + TextBox7.Text + "',Emailaddress='" + TextBox3.Text + "',Password='" + txtPass.Text + "',Username = '" + TextBox11.Text + "' where Name= '" + TextBox1.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language='javascript'>alert('Update successfully')</script>");
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        TextBox1.Text = row.Cells[1].Text;
        TextBox4.Text = row.Cells[2].Text;
        TextBox2.Text = row.Cells[3].Text;
        TextBox10.Text = row.Cells[4].Text;
        TextBox9.Text = row.Cells[5].Text;
        TextBox8.Text = row.Cells[6].Text;
        TextBox5.Text = row.Cells[7].Text;
        TextBox6.Text = row.Cells[8].Text;
        TextBox7.Text = row.Cells[9].Text;
        TextBox3.Text = row.Cells[10].Text;
        txtPass.Text = row.Cells[11].Text;
        TextBox11.Text = row.Cells[12].Text;

    }
}
