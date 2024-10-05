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
public partial class ADMIN_subcategories : System.Web.UI.Page
{
    OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.DataBind();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count (subid) from subcategory";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());

        cn.Close();

        i++;
        txtid.Text  = i.ToString();

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into subcategory values(" + txtid.Text + ",'"+DropDownList1.Text +"','" + txtname.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView2.DataBind();
        txtid.Text = "";
        txtname.Text = "";
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update subcategory set subid=" + txtid.Text + ",maincat='"+DropDownList1.Text +"',subcatname='" + txtname.Text + "'where subid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language='javascript'>alert('Update successfully')</script>");
        GridView2.DataBind();
        txtid.Text = "";
        txtname.Text = "";

    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from subcategory where subid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='javascript'>alert('Delete successfully')</script>");
        GridView2.DataBind();
        txtid.Text = "";
        txtname.Text = "";

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView2.SelectedRow;
        txtid.Text = row.Cells[1].Text;
        DropDownList1.Text = row.Cells[2].Text;
        txtname.Text = row.Cells[3].Text;

    }
}
