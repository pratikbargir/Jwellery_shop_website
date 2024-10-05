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

public partial class ADMIN_Add_Admin : System.Web.UI.Page
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
    protected void btnaddnew_Click(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into admin values('" + txtname.Text + "','" + txtpassword.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        txtname.Text = "";
        txtpassword.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        txtname.Text = row.Cells[1].Text;
        txtpassword.Text  = row.Cells[2].Text;

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Admin set aname='" + txtname.Text  + "',apassword='" + txtpassword.Text + "'where aname='" + txtname.Text  + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language='javascript'>alert('Update successfully')</script>");
        // showgrid();
        GridView1.DataBind();
        txtname.Text = "";
        txtpassword.Text = "";
        
    }
}
