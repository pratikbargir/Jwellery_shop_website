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

public partial class ADMIN_Company : System.Web.UI.Page
{
    public
        OleDbConnection cn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        showgrid();
    }
    void showgrid()
    {
        cn.Open();
        dt.Clear();
        cmd.CommandText = "select * from Company";
        cmd.Connection = cn;
        dt.Load(cmd.ExecuteReader());
        GridView1.DataSource = dt;
        GridView1.DataBind();

        cn.Close();



    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select max (Companyid) from Company";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        i++;
        txtcid .Text  = i.ToString();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (txtcname.Text == "")
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Name must enter')</script>");
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Company values(" + txtcid.Text + ",'" + txtcname.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            showgrid();
            txtcid.Text = "";
            txtcname.Text = "";

        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Company set Companyid=" + txtcid.Text + ",Companyname='" + txtcname.Text + "'where Companyid=" + txtcid.Text + ""; 
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        showgrid();
        txtcid.Text="";
        txtcname.Text="";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        txtcid.Text = row.Cells[1].Text;
        txtcname.Text = row.Cells[2].Text;
    }
    protected void btnexit_Click(object sender, EventArgs e)
    {

    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Company where Companyid=" + txtcid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        showgrid();
        txtcid.Text = "";
        txtcname.Text = "";

    }
}
