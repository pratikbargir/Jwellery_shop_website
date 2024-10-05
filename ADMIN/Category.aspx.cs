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

public partial class ADMIN_Category : System.Web.UI.Page
{
    public
     OleDbConnection cn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
protected void  GridView1_SelectedIndexChanged(object sender, EventArgs e)
{
    GridViewRow row = GridView1.SelectedRow;
    txtid.Text = row.Cells[1].Text;
    txtname.Text = row.Cells[2].Text;
}

    protected void Page_Load(object sender, EventArgs e)
    {
       showgrid();
    }
    void showgrid()
    {
        cn.Open();
        dt.Clear();
        cmd.CommandText = "select * from Categorey";
        cmd.Connection = cn;
        dt.Load(cmd.ExecuteReader());
        GridView1.DataSource = dt;
        GridView1.DataBind();

        cn.Close();
    }
   
    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count (cid) from Categorey";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());

        cn.Close();

        i++;
        txtid.Text = i.ToString();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "")
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Name must enter')</script>");
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Categorey values(" + txtid.Text + ",'" + txtname.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            showgrid();
            txtid.Text = "";
            txtname.Text = "";
        }
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Categorey set cid=" + txtid.Text + ",cname='" + txtname.Text + "'where cid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language='javascript'>alert('Update successfully')</script>");
       
        txtid.Text = "";
        txtname.Text = "";
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Categorey where cid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='javascript'>alert('Delete successfully')</script>");
        showgrid();
        txtid.Text = "";
        txtname.Text = "";
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}
